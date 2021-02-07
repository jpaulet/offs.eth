var OffsToken = artifacts.require("./OffsToken.sol");
var Offseth = artifacts.require("./Offseth.sol");

module.exports = async function(deployer, _networks, accounts) {
	await deployer.deploy(OffsToken, 'OffsToken', 'OFFS', '1000000000000000000000000000');
	const offsToken = await OffsToken.deployed();

	await deployer.deploy(Offseth, offsToken.address);
	const offseth = await Offseth.deployed();

  	const balance = offseth.balance();
  	console.log("The Offseth balance is: " + balance.toString());

  	await offseth.deposit(50, {from: accounts[1]});
  	const balance1 = await offseth.balanceOf(accounts[1]);
  	console.log("The user " + accounts[1] + " has deposited "+ balance1.toString());
};