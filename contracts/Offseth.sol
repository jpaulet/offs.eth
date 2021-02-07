// SPDX-License-Identifier: MIT
pragma solidity ^0.7.5;

import "@openzeppelin/contracts/math/SafeMath.sol";
import "@openzeppelin/contracts/token/ERC20/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/ownership/Ownable.sol";
import "@openzeppelin/contracts/utils/Address.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20";

// import "./ILendingPool.sol";
// import "./ILendingPoolAddressesProvider.sol";

import "@aave/protocol-v2/contracts/interfaces/ILendingPool.sol";
import "@aave/protocol-v2/contracts/interfaces/ILendingPoolAddressesProvider.sol";
import "@aave/protocol-v2/contracts/interfaces/IAToken.sol";

contract Offseth {
	using SafeMath for uint256;
	using SafeERC20 for ERC20;
	using SafeERC20 for IERC20;
	using Address for address;
	
	// Mainnet
    // ILendingPoolAddressesProvider public constant provider = ILendingPoolAddressesProvider(0x24a42fD28C976A61Df5D00D0599C34c4f90748c8);
    
    // Kovan
    ILendingPoolAddressesProvider public constant provider = ILendingPoolAddressesProvider(0x506B0B2CF20FAA8f38a4E2B524EE43e1f4458Cc5);M
	
	ILendingPool public constant pool = ILendingPool(0x7d2768dE32b0b80b7a3454c06BdAc94A69DDc7A9); //Lending pool contract address
	IERC20 public constant dai = IERC20(0x6B175474E89094C44Da98b954EedeAC495271d0F); 		//Dai contract address
	IERC20 public constant aDai = IERC20(0x028171bCA77440897B824Ca71D1c56caC55b68A3); 		//aDai contract address

	uint256 daiPerToken = 15; 		//Number of Dais per each OFFS token
	IERC20 offsToken; 				//OFFS token contract

	struct Stacked {
		uint256 amount;
		uint256 current_reward;
		uint256 date_deposited;
		uint256 total_earned;
		uint256 last_earned_date;
		bool isMember;
	}

	address public owner;
	uint256 public totalDeposit;
	uint256 public startRound;
	uint256 public endRound;
	uint256 public roundNum;
	uint256 public totalEarned;
	uint256 public earned;

	mapping(address => Stacked) public stakes;
	address[] public userList;

	// Events
    event Deposit(address indexed _user, uint256 _amount);
    event Withdraw(address indexed _user, uint256 _amount);
    event TokenSend(address indexed _user, uint256 _amount);
    event Sell(address indexed _user, uint256 _amount);
    event TokensPerDai(uint256 _newPrice);


    /**
     * Constructor function
     *
     * Initializes contract with owner and starts the first round
     */
	constructor(address _offsToken, address _provider) public {
		owner = msg.sender;
		offsToken = IERC20(_offsToken);
		provider = ILendingPoolAddressesProvider(_provider);

		dai.approve(address(aaveLendingPool), type(uint256).max);
        adai.approve(address(aaveLendingPool), type(uint256).max);

		//Initiate the params
		totalDeposit = 0;
		totalEarned = 0;
		roundNum = 1;
		startRound = block.timestamp;
		endRound = block.timestamp + 30 days;
	}


	/** 
	 * Get the balance of OFFS tokens that owns this contract 
	 */
	function balance() public view returns (uint256) {
    	return offsToken.balanceOf(address(this));
	}


	/**
	 * Start the next round
	 *
	 * Allows the owner to start the next round
	 * Automatically distribute the rewards to all participants
	 */
	function executeStartRound() external {
		require(msg.sender == owner, "Only owner");
		require(block.timestamp > endRound, "Round not finished");

		calculateEarned();
		distributeRewards();

		roundNum += 1;
		startRound = block.timestamp;
		endRound = block.timestamp + 30 days;
	}


	/**
	 * Allows users to deposit their Dai
	 * 
	 * First updates the user rewards
	 * Then transfer to the pool on behalf the user
	 */
	function deposit(uint256 _amount) external payable {
		// Amount must be greater than zero
    	require(_amount > 0, "deposit <= 0");
    	require(dai.balanceOf(msg.sender) >= _amount, "not enought dai"); 

		calculateEarned();
		calculateRewards(msg.sender);
		
		// Update the stakes info for user
		stakes[msg.sender].amount = stakes[msg.sender].amount.add(_amount);
		stakes[msg.sender].date_deposited = block.timestamp;
		stakes[msg.sender].isMember = true;

		// Add the user to the userList
		userList.push(msg.sender);

		// Update the totalDiposit of the contract
		totalDeposit = totalDeposit.add(_amount);

		// Aprove & Deposit Dai to Aave Pool
		ILendingPool lendingPool = ILendingPool(provider.getLendingPool());
        address lendingPoolCore = provider.getLendingPoolCore();

        // Transfer `amount` dai from `msg.sender`
        dai.safeTransferFrom(msg.sender, address(this), _amount);

        // Approve `amount` dai to lendingPool
        dai.safeIncreaseAllowance(lendingPoolCore, _amount);

        // Deposit `amount` dai to lendingPool
        lendingPool.deposit(address(dai), _amount, address(this), 0);

		/*
		dai.approve(address(pool), _amount);
		pool.deposit(address(dai), _amount, address(this), 0);
		*/

		emit Deposit(msg.sender, _amount);
	}


	/**
	 * Allows users to withdraw their Dai
	 * 
	 * First updates the user rewards
	 * Then transfer to the user the desired amount
	 */
	function withdraw(uint256 _amount) external payable {
		require(_amount > 0, "withdraw <= 0");
		require(isMember(msg.sender), "No member"); //Is member
		require(_amount <= stakes[msg.sender].amount, "Not enoght funds"); //Has enought funds

		calculateEarned();
		calculateRewards(msg.sender);

		// Update the stakes info for user
		stakes[msg.sender].amount = stakes[msg.sender].amount.sub(_amount);
		stakes[msg.sender].date_deposited = block.timestamp;

		// Update the totalDeposit for the contract
		totalDeposit = totalDeposit.sub(_amount);
		
		// Approve & Withdraw aDai from Aave Pool

		ILendingPool lendingPool = ILendingPool(provider.getLendingPool());

        // Initialize aToken
        (, , , , , , , , , , , address aTokenAddress, ) = lendingPool.getReserveData(address(dai));
        IAToken aToken = IAToken(aTokenAddress);

        // Redeem `_amount` aToken, since 1 aToken = 1 dai
        aToken.redeem(_amount);

        // Transfer `_amount` dai to `msg.sender`
        dai.safeTransfer(msg.sender, _amount);

		/*
		aDai.approve(address(pool), _amount);
		pool.withdraw(address(dai), _amount, msg.sender);
		*/

		emit Withdraw(msg.sender, _amount);
	}


	/**
	 * Allow user to withdraw their Offs rewards
	 * 
	 * Calculate the num of Offs tokens (based on user rewards and daiPerToken)
	 * and transfer the amount to the user.
	 * 
	 * @param _amount The amount of the rewards to withdraw
	 */
	function withdrawRewards(uint256 _amount) public {
		require(isMember(msg.sender), "No member"); //Is member
		require(_amount <= stakes[msg.sender].current_reward, "Not enought rewards"); //Has enought funds

		stakes[msg.sender].current_reward = stakes[msg.sender].current_reward.sub(_amount);
		uint256 _numberOfTokens = _amount.div(daiPerToken);

		require(offsToken.balanceOf(address(this)) >= _numberOfTokens, "Not enought Tokens");
		offsToken.transfer(msg.sender, _numberOfTokens);

		emit TokenSend(msg.sender, _numberOfTokens);
	}


	/**
	 * Calculates the number of Dai generated by the AAVE pool interest
	 * that the user generated in this round and accumulates to the total
	 *
	 * @param _user The address of the user to calculate the rewards
	 */
	function calculateRewards(address _user) private {
		require(isMember(_user), "Not member");

		// Get timestamp user deposited
		uint256 _start = stakes[_user].date_deposited;

		// If it was before the round start, set to round start
		if(_start < startRound){
			_start = startRound;
		}

		// If user already earned this round, get that timestamp
		if(stakes[_user].last_earned_date > _start){
			_start = stakes[_user].last_earned_date;
		}

		// Get the endRound or if the round is not finished, the block.timestamp timestamp
		uint256 _end = endRound;
		if(block.timestamp < endRound){
			_end = block.timestamp;
		}

		// Days that the user has been in the round
		uint256 _userDays = ( _end.sub(_start) ).div(86400); // 60*60*24 sec to days

		// The total num of days of the round
		uint256 _totalDays = ( endRound.sub(startRound) ).div(86400);

		// Set the reward based on percentage of the user deposit and the num of days of deposit
		// reward = ((earned * _userDays ) / _totalDays) * (stakes[_user].amount / totalDiposit)
		//uint256 _reward = ( (earned.div(_totalDays)).mul(_userDays) ).mul( stakes[_user].amount.div(totalDeposit) );

		uint256 upper = earned.mul(_userDays).mul(stakes[_user].amount);
		uint256 down = _totalDays.mul(totalDiposit);
		uint256 reward = upper.div(down);
		require (_reward <= totalEarned, "Reward > totalEarned");

		// Update rewards stats and user stats
		stakes[_user].last_earned_date = block.timestamp;
		totalEarned = totalEarned.add(_reward);
		stakes[_user].current_reward = stakes[_user].current_reward.add(_reward);
		stakes[_user].total_earned = stakes[_user].total_earned.add(_reward);
	}


	/**
	 * Distributes the rewards generated by each user in this round
	 * Called by the owner when a round ends
	 * Moves all the generated Dai to the DAO contract to buy CO2 Tokens
	 */
	function distributeRewards() private {
		require(msg.sender == owner, "Only Owner");

		// Foreach user, distribute rewards
		for(uint i = 0; i<userList.length; i++) {
			calculateRewards(userList[i]);
		}

		// Move all the earnings to the DAO to purchase CO2 offsets with it
		calculateEarned();
		//moveBenefitsToDAO(); << TODO
	}


	/**
	 * Calculate the diference between the users deposits and the AAVE pool
	 * (the pool earnings in aDai)
	 */
	function calculateEarned() private {
        uint256 _totalBalance = aDai.balanceOf(address(this));
        earned = (_totalBalance.sub(totalDeposit));
	}


	function () external payable {
		buyTokens(msg.sender);
	}


	/**
     * Buy Tokens function
     *
     * Allows users to buy tokens
     */
    function buyTokens(address _beneficiary) external payable {
    	require(_beneficiary != address(0));
    	require(msg.value != 0);

        _numberOfTokens = msg.value.mul(daiPerToken));
        require(offsToken.balanceOf(address(this)) >= _numberOfTokens, 'Not enought tokens');
        require(offsToken.transfer(msg.sender, _numberOfTokens));

        emit Sell(msg.sender, _numberOfTokens);
    }


	/**
	 * Returns if a user is member of the contract
	 *
	 * @param _addr The address of the user
	 */
	function isMember(address _addr) public view returns(bool) {
		return stakes[_addr].isMember;
	}


	/**
	 * Allows the owner to change the num of tokens per Dai
	 */
	function updateTokensPerDai(uint256 _newDaiPerToken) external {
		require(msg.sender == owner, "Only Owner");
		daiPerToken = _newDaiPerToken;
		emit TokensPerDai(_newDaiPerToken);
	}

}