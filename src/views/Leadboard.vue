<template>
  <div id="page-container">
    <!-- Nav -->
    <header id="main-header" data-height-onload="80" data-height-loaded="true" data-fixed-height-onload="80" style="top: 0px;box-shadow:0 0 3px #000;border-bottom:1px solid #eee;">
       <div class="container clearfix et_menu_container" style='padding-top:0px;'>
          <div style='float:left;'>
              <img src='img/greenchain2.png' style='height: 48px; padding-top: 12px;margin-top: 6px;' />
          </div>

          <div id="et-top-navigation" data-height="66" data-fixed-height="40">
             <nav id="top-menu-nav">
                <ul id="top-menu" class="nav">
                   <li id="homeLink" class="menu-item">
                      <a href="/">Home</a>
                   </li>
                   <li id="howitWorksLink" class="menu-item">
                      <a href="how-it-works">How It Works</a>
                   </li>
                   <li id="aboutLink" class="menu-item">
                      <a href="about">About</a>
                   </li>
                   <li id="leaderboardLink" class="menu-item current-menu-item current_page_item">
                      <a href="leaderboard" aria-current="page">Leaderboard</a>
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
                          <a href="/">Home</a>
                      </li>
                      <li class="menu-item">
                          <a href="how-it-works">How It Works</a>
                      </li>
                      <li class="menu-item">
                          <a href="about">About</a>
                      </li>
                      <li class="menu-item current-menu-item page_item current_page_item et_first_mobile_item">
                          <a href="leaderboard" aria-current="page">Leaderboard</a>
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

    Leaderboard

    <Footer />
</div>
</template>

<script>
import Footer from "@/components/Footer.vue";

export default {
  name: 'Leaderboard',
  components: {
    'Footer': Footer
  },
  data: function() {
    return {}
  }
};
</script>