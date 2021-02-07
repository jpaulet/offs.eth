<template>
  <div id="page-container"> 
    
    <!-- Nav -->
    <header id="main-header" data-height-onload="80" data-height-loaded="true" data-fixed-height-onload="80" style="top: 0px;box-shadow:0 0 3px #000;border-bottom:1px solid #eee;">
       <div class="container clearfix et_menu_container" style='padding-top:0px;'>
          <div style='float:left;'>
              <!-- <h1>GreenChain</h1> -->
              <!-- <img src='img/greenchain2.png' style='height: 48px; padding-top: 12px;margin-top: 6px;' /> -->
              <h1 style='padding-top:22px;font-size:28px;'><strong><span style='color:#00a02f;'>Offs</span>eth</strong></h1>
          </div>

          <div id="et-top-navigation" data-height="66" data-fixed-height="40">
             <nav id="top-menu-nav">
                <ul id="top-menu" class="nav">
                   <li id="homeLink" class="menu-item">
                      <a href="/">Home</a>
                   </li>
                   <li id="howitWorksLink" class="menu-item current-menu-item current_page_item">
                      <a href="how-it-works" aria-current="page">How It Works</a>
                   </li>
                   <li id="aboutLink" class="menu-item">
                      <a href="about">About</a>
                   </li>
                   <li id="leaderboardLink" class="menu-item">
                      <a href="leaderboard">Leaderboard</a>
                   </li>
                   <li id="contactLink" class="menu-item">
                      <a href="contact">Contact</a>
                   </li>
                   <li>
                      <button class="btnRoundGreen" style='margin-top:-24px;' @click.prevent="initWallet()">App ></button>
                   </li>
                </ul>
             </nav>

             <div id="et_mobile_nav_menu">
                <div class="mobile_nav closed">
                   <span class="select_page">Select Page</span>
                   <span class="mobile_menu_bar mobile_menu_bar_toggle"></span>
                   <ul id="mobile_menu" class="et_mobile_menu">
                      <li class="menu-item">
                          <a href="">Home</a>
                      </li>
                      <li class="menu-item current-menu-item page_item current_page_item et_first_mobile_item">
                          <a href="how-it-works" aria-current="page">How It Works</a>
                      </li>
                      <li class="menu-item">
                          <a href="about">About</a>
                      </li>
                      <li class="menu-item">
                          <a href="leaderboard">Leaderboard</a>
                      </li>
                      <li class="menu-item">
                          <a href="contact">Contact</a>
                      </li>
                      <li>
                          <a class="et_pb_button et_pb_custom_button_icon et_pb_button_0 et_pb_bg_layout_light" href="app" data-icon=">" @click.prevent="initWallet()">Connect</a>
                      </li>
                   </ul>
                </div>
             </div>
          </div>
       </div>
    </header>
    <!-- end Nav -->

    <!-- How It Works -->
    <div id='section1' class="et_pb_section et_pb_section_0 et_pb_with_background et_section_regular">
      <div class="et_pb_row et_pb_row_0">

         <div class="et_pb_column et_pb_column_1_2 et_pb_column_0  blend_mode">
            <div class="et_pb_module et_pb_text et_pb_text_0  et_pb_text_align_left et_pb_bg_layout_light">
               <div class="et_pb_text_inner mt-3">
                  <h1 style='font-size:3.3em;'> How It Works?</h1>
                  <p style='font-size:1.2em;margin-top:20px;text-align:justify;'>
                    <strong>Greenchain</strong> provides an easy & quick way to <u>offset all your Ethereum Blockchain emissions</u> by purchassing carbon credits equivalents (or superiors) than your transactions. To start using Greenchain you could:<br /><br />
                    <ul style='font-size:22px;'>
                      <li style='padding-left:20px;'>
                        - <strong>Purchase OFFS tokens directly</strong><br />
                        <p style='font-size:18px;padding-left:15px;text-align:justify;'>A token pegged to 1 Tonne of CO2 with our app.</p>
                        <div class="et_pb_button_module_wrapper et_pb_button_0_wrapper  et_pb_module" style='text-align:center;'>
                           <a class="et_pb_button et_pb_custom_button_icon et_pb_button_0 et_pb_bg_layout_light" href="" data-icon=">" @click.prevent="">Purchase</a>
                        </div>
                      </li>
                      <li style='padding-left:20px;margin-top:30px;'>
                        - <strong>Deposit your DAI</strong> in the CO2 Token pool. <br />
                        <p style='font-size:18px;padding-left:15px;text-align:justify;'>By doing this, you will be giving all the earnings generated with this pool to purchase CO2 offset credits, and OFFS tokens will be distributed each month to all participants (depending on time & amount).</p>
                        <div class="et_pb_button_module_wrapper et_pb_button_5_wrapper  et_pb_module" style='text-align:center;'>
                           <a class="et_pb_button et_pb_custom_button_icon et_pb_button_5 et_pb_button_6 et_pb_bg_layout_light" href="" data-icon=">" @click.prevent="">Diposit</a>
                        </div>
                      </li>
                    </ul>                    
                  </p>
               </div>
            </div>            
         </div>
         <div class="et_pb_column et_pb_column_1_2 et_pb_column_1  blend_mode et-last-child">
            <div class="et_pb_module et_pb_image">
                <span class=" ">
                    <img loading="lazy" src="img/howitworks.jpg" alt="" title="" class="wp-image-221950" width="auto" height="auto" style='border-radius:12px;box-shadow:3px 3px 5px #ccc;'>
                </span>
            </div>                
         </div>
      </div>

      <div style='text-align:center;margin-bottom:50px;'>
        <img src='img/flow.png' />
      </div>

      <div class='text-center text-danger mt-5'>
        <strong>Disclaimer: This project is on BETA and in development, new features will be deployed soon. Use it at your own risk.</strong> 
      </div>
    </div>

    <div class="section">
      
    </div>
    
    <Footer />
  </div>
</template>

<style>
.et_pb_button_6 {
    color: #000000 !important;
    border-color: rgba(0,0,0,0);
    background-color: #ffdd50;
}
</style>

<script>
import Footer from "@/components/Footer.vue";
/*
import Web3 from "web3";
import Web3Modal from "web3modal";
import WalletConnectProvider from "@walletconnect/web3-provider";
import Fortmatic from "fortmatic";
import Torus from "@toruslabs/torus-embed";

const providerOptions = {
  walletconnect: {
    package: WalletConnectProvider, // required
    options: {
      infuraId: "INFURA_ID" // required
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
  cacheProvider: false, // optional
  providerOptions // required
});
*/

export default {
  name: 'HowItWorks',
  components: {
    'Footer': Footer
  },
  data: function() {
    return {}
  },
  methods: {
    /*
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
    */
  }
};
</script>