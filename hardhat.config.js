/**
 * @type import('hardhat/config').HardhatUserConfig
 */
require('@nomiclabs/hardhat-waffle');

//const INFRURA_URL = '';
//const PRIVATE_KEY = '';

module.exports = {
  solidity: {
    compilers: [
      {
        version: "0.7.5"
      },
      {
        version: "0.8.0"
      }
    ]
  }
};

/**
 networks: {
    rinkeby: {
	url: INFRURA_URL,
        accounts: [`0x${PRIVATE_KEY}`]
    }
 }
*/
