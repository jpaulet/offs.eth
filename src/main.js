import '@babel/polyfill'
import 'mutationobserver-shim'
import Vue from 'vue'
import './plugins/bootstrap-vue'
import App from './App.vue'
import router from './router'
import Vuex from 'vuex'

global.jQuery = require('jquery');
window.$ = global.jQuery;

Vue.use(Vuex)
const store = new Vuex.Store({
  state: {
    walletConnected: null,
    user: {
      accounts: null,
      txCount: 0,
      address: null,
      balance: 0,
      balanceToEth: 0
    }
  },
  mutations: {
    initializeStore(state){
      if(localStorage.getItem('walletConnected')) {
        state.walletConnected = true;
      }
      if(localStorage.getItem('userInfo')) {
        state.user = JSON.parse(localStorage.getItem('userInfo'));
      }       
    },
    addUserInfo (state, user) {
      localStorage.setItem('userInfo', JSON.stringify(user));
      state.user.accounts = user.accounts;
      state.user.txCount = user.txCount;
      state.user.address = user.address;
      state.user.balance = user.balance;
      state.user.balanceToEth = user.balanceToEth;
    },
    walletConnected(state){
      localStorage.setItem('walletConnected',true);
      state.walletConnected = true;
    },
    walletDisconnected(state){
      localStorage.removeItem('walletConnected');
      state.walletConnected = false;
    }
  }
});


Vue.config.productionTip = false


/**
 * Vue filter to round the decimal to the given place.
 * @param {String} value    The value string.
 * @param {Number} decimals The number of decimal places.
 */
Vue.filter('round', function(value, decimals) {
  if(!value) {
    value = 0;
  }

  if(!decimals) {
    decimals = 0;
  }

  value = Math.round(value * Math.pow(10, decimals)) / Math.pow(10, decimals);
  return value;
});

new Vue({
  router,
  store,
  beforeCreate() { this.$store.commit('initializeStore');},
  render: h => h(App)
}).$mount('#app')
