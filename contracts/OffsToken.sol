// SPDX-License-Identifier: MIT
pragma solidity ^0.7.5;

import "./SafeMath.sol";
import "./IERC20.sol";

// ----------------------------------------------------------------------------
// 'OFFS' 'OffsToken' token contract
//
// Symbol      : OFFS
// Name        : OffsToken
// Total supply: 100000000 (100M)
// Decimals    : 18
//
// (c) by J.P. Aulet (@jp_aulet) 2020. The MIT Licence.
// ----------------------------------------------------------------------------

contract OffsToken is IERC20 {
    string  public constant name = "OffsToken";
    string  public constant symbol = "OFFS";
    uint8   public constant decimals = 18;
    uint256 public totalSupply = 100000000*10**decimals;
    address public owner;


    //Balances
    mapping(address => uint256) public balanceOf;
    mapping(address => mapping(address => uint256)) public allowance;


    //Events
    event Transfer(address indexed _from, address indexed _to, uint256 _value);
    event Approval(address indexed _owner, address indexed _spender, uint256 _value);
    event Burn(address indexed from, uint256 value);


    using SafeMath for uint256;    


    /**
     * Constructor function
     *
     * Initializes contract with initial supply tokens to the creator of the contract
     */
    constructor () public {
        balanceOf[msg.sender] = totalSupply;
        owner = msg.sender;
    }

    function totalSupply() public override view returns (uint256) {
        return totalSupply;
    }

    function balanceOf(address tokenOwner) public override view returns (uint256) {
        return balancesOf[tokenOwner];
    }

    function allowance(address owner, address delegate) public override view returns (uint) {
       return allowance[owner][delegate];
    }


    /**
     * Transfer tokens
     *
     * Send `_numTokens` tokens to `_receiver` from your account
     *
     * @param _receiver The address of the recipient
     * @param _numTokens the amount to send
     */
    function transfer(address _receiver, uint256 _numTokens) external returns (bool success) {
        // Prevent transfer to 0x0 address. Use burn() instead
        require(_receiver != address(0x0));

        // Check if the sender has enough
        require(balanceOf[msg.sender] >= _numTokens);

        // Check for overflows
        require(balanceOf[_receiver].add(_numTokens) > balanceOf[_receiver]);

        balanceOf[msg.sender] = balanceOf[msg_sender].sub(_numTokens);
        balanceOf[_receiver]  = balanceOf[msg_sender].add(_numTokens);

        emit Transfer(msg.sender, _receiver, _numTokens);

        return true;
    }


    /**
     * @dev See {IERC20-approve}.
     *
     * Requirements:
     *
     * - `delegate` cannot be the zero address.
     */
    function approve(address _delegate, uint256 _numTokens) external virtual returns (bool) {
        _approve(msg.sender, _delegate, _numTokens);
        return true;
    }


    /**
     * Set allowance for other address
     *
     * Allows `_spender` to spend no more than `_value` tokens in your behalf
     *
     * @param _spender The address authorized to spend
     * @param _value the max amount they can spend
     */
    function _approve(address _owner, address _spender, uint256 _value) public returns (bool success) {
        require(_owner != address(0), "approve from the 0 address");
        require(_spender != address(0), "approve to the 0 address");

        allowance[msg.sender][_spender] = _value;
        emit Approval(_owner, _spender, _value);
        return true;
    }


    /**
     * Transfer tokens from other address
     *
     * Send `_value` tokens to `_to` in behalf of `_from`
     *
     * @param _from The address of the sender
     * @param _to The address of the recipient
     * @param _value the amount to send
     */
    function transferFrom(address _from, address _to, uint256 _value) external returns (bool success) {
        require(_from != address(0), "approve from the 0 address");
        require(_to != address(0), "approve to the 0 address");
        require(_value <= balanceOf[_from]);
        require(_value <= allowance[_from][msg.sender]);

        balanceOf[_from] = balanceOf.sub(_value);
        allowance[_from][msg.sender] = allowance[_from][msg.sender].sub(_value);
        balanceOf[_to]   = balanceOf.add(_value);

        emit Transfer(_from, _to, _value);
        return true;
    }


    /**
     * Destroy tokens
     *
     * Remove `_value` tokens from the system irreversibly
     *
     * @param _value the amount of money to burn
     */
    function burn(uint256 _value) external returns (bool success) {
        require(balanceOf[msg.sender] >= _value);                   // Check if the sender has enough
        
        balanceOf[msg.sender] = balanceOf[msg.sender].sub(_value);  // Subtract from the sender
        totalSupply = totalSupply.sub(_value);                      // Updates totalSupply

        emit Burn(msg.sender, _value);
        return true;
    }


    /**
     * Destroy tokens from other account
     *
     * Remove `_value` tokens from the system irreversibly on behalf of `_from`.
     *
     * @param _from the address of the sender
     * @param _value the amount of money to burn
     */
    function burnFrom(address _from, uint256 _value) external returns (bool success) {
        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
        require(_value <= allowance[_from][msg.sender]);    // Check allowance
        
        balanceOf[_from] = balanceOf[_from].sub(_value);                          // Subtract from the targeted balance
        allowance[_from][msg.sender] = allowance[_from][msg.sender].sub(_value);  // Subtract from the sender's allowance
        totalSupply = totalSupply.sub(_value);                                    // Update totalSupply
        
        emit Burn(_from, _value);
        return true;
    }
}