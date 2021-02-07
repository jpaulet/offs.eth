<template>
  <div id="app">
    <router-view/>
  </div>
</template>

<style lang="scss">

</style>

<script>
import Web3 from "web3";
import Web3Modal from "web3modal";
import WalletConnectProvider from "@walletconnect/web3-provider";
import Fortmatic from "fortmatic";
import Torus from "@toruslabs/torus-embed";

const providerOptions = {
  walletconnect: {
    package: WalletConnectProvider, // required
    options: {
      infuraId: "3a4e7138de7b4b57989e22af1a8f5649" // required
    }
  },
  fortmatic: {
    package: Fortmatic, // required
    options: {
      key: "FORTMATIC_KEY" // required
    }
  },
  torus: {
    package: Torus, // required
    options: {
      networkParams: {
        host: "https://localhost:8545", // optional
        chainId: 1337, // optional
        networkId: 1337 // optional
      },
      config: {
        buildEnv: "development" // optional
      }
    }
  }
};

const web3Modal = new Web3Modal({
  //network: "mainnet", // optional
  network: "rinkeby", // optional
  cacheProvider: false, // optional
  providerOptions // required
});

export default {
  name: 'Landing',
  components: {},
  data: function() {
    return {}
  },
  methods: {
    async initWallet(){
      const provider = await web3Modal.connect();
      const web3 = new Web3(provider);

      this.$store.commit('walletConnected');

      let user = {}
      user.accounts = await web3.eth.getAccounts();
      user.address = user.accounts[0];
      user.txCount = await web3.eth.getTransactionCount(user.address);
      user.balance = await web3.eth.getBalance(user.address);
      user.balanceToEth = web3.utils.fromWei(user.balance,'ether');
    
      this.$store.commit('addUserInfo',user);
              
      //Redirect
      this.$router.push({name: 'app', params: null});
    }
  }
}
</script>