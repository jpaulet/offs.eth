const { expect } = require('chai');

describe('Token Contract', () => {
   let Token, token, owner, addr1, addr2;

   beforeEach( async () => {
	Token = await ethers.getContractFactory('Token');
        token = await Token.deploy();
        [owner, addr1, addr2, _] = await ethers.getSigners();
   });

   describe('Deployment', () => {
	it('Should set the right owner', async () => {
	   expect(await token.owner()).to.equal(owner.address);
        });

        it('should assing the total supply of tokens to the owner, async () => {
	    const ownerBalance = await token.balanceOf(owner.address);
            expect(await token.totalSupply()).to.equal(ownerBalance);
        }); 
   });

   describe('Transactions', () => {
	it('Should transfer tokens between accounts', async () => {
            await token.transfer(addr1.address, 50);
            const addr1Balance = await token.balanceOf(addr1.address);
	    expect(addr1Balance).to.equal(50);
        });
   });
});
