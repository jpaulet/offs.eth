const fs = require('fs');
  
async function main() {
  console.log(`----------    START    ----------`);

  const [deployer] = await ethers.getSigners();
  console.log(`[1/6] - Deploying contracts with the account: ${deployer.address}`);

  const balance = await deployer.getBalance();
  console.log(`[2/6] - Account balance: ${balance.toString()}`);

  // OFFS Token Contract
  const OffsToken = await ethers.getContractFactory(`OffsToken`);
  const offsToken = await OffsToken.deploy();
  await offsToken.deployed();
  console.log(`[3/6] - Token address: ${offsToken.address}`);

  // Offseth Contract
  const Offseth = await ethers.getContractFactory(`Offseth`);
  const offseth = await Offseth.deploy(offsToken.address);
  await offseth.deployed();
  console.log(`[4/6] - Contract address: ${offseth.address}`);

  const data = {
    address: offsToken.address,
    abi: JSON.parse(offsToken.interface.format('json'))
  };
  fs.writeFileSync('frontend/src/OffsToken.json', JSON.stringify(data));
  console.log(`[5/6] - Offs Token ABI created`);

  const data1 = {
	  address: offseth.address,
    abi: JSON.parse(offseth.interface.format('json'))
  };
  fs.writeFileSync('frontend/src/Offseth.json', JSON.stringify(data1));
  console.log(`[6/6] - Offseth Contract ABI created`);

  console.log(`---------- FINISHED OK ----------`);
}

main()
.then(() => process.exit(0))
.catch(error => {
  console.log(error);
  process.exit(1);
});