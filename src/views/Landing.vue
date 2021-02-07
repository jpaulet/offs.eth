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
                    <li id="homeLink" class="menu-item current-menu-item current_page_item">
                       <a href="/" aria-current="page">Home</a>
                    </li>
                    <li id="howitWorksLink" class="menu-item">
                       <a href="how-it-works">How It Works</a>
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
                       <li class="menu-item current-menu-item page_item current_page_item et_first_mobile_item">
                           <a href="" aria-current="page">Home</a>
                       </li>
                       <li class="menu-item">
                           <a href="how-it-works">How It Works</a>
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

    <!-- Landing Header -->
    <div id='section1' class="et_pb_section et_pb_section_0 et_pb_with_background et_section_regular">
      <div class="et_pb_row et_pb_row_0">

         <div class="et_pb_column et_pb_column_1_2 et_pb_column_0  blend_mode">
            <div class="et_pb_module et_pb_text et_pb_text_0  et_pb_text_align_left et_pb_bg_layout_light">
               <div class="et_pb_text_inner">
                  <h1 style='font-size:3.3em;margin-top:-25px;'> There’s no <strong>Blockchain</strong> without our <span style="color: #00a02f;font-weight:600;">Planet</span></h1>
                  <p style='font-size:1.3em;margin-top:20px;'>Our mission is making Ethereum Blockchain <span style="color: #00a02f;font-weight:600;">sustainable</span> for a greener future by offsetting their CO2 emissions.
                  </p>
               </div>
            </div>
            <div class="et_pb_button_module_wrapper et_pb_button_0_wrapper  et_pb_module ">
               <a class="et_pb_button et_pb_custom_button_icon et_pb_button_0 et_pb_bg_layout_light" href="" data-icon=">" @click.prevent="initWallet()">Start Offseting!</a>
            </div>
         </div>
         <div class="et_pb_column et_pb_column_1_2 et_pb_column_1  blend_mode et-last-child">
            <div class="et_pb_module et_pb_image et_pb_image_0">
                <span class="et_pb_image_wrap ">
                    <img loading="lazy" src="img/green-energy-14.png" alt="" title="" class="wp-image-221950" width="auto" height="auto">
                </span>
            </div>                
         </div>
      </div>

      <!--
      <div class="et_pb_row et_pb_row_1" style='display:none;'>
         <div class="et_pb_column et_pb_column_1_2 et_pb_column_2  blend_mode">
            <div class="et_pb_module et_pb_text et_pb_text_1  et_pb_text_align_left">
               <div class="et_pb_text_inner">
                  <h2 style='color:#000;'>Green Energy For Your Business</h2>
               </div>
            </div>
            <div class="et_pb_button_module_wrapper et_pb_button_1_wrapper  et_pb_module ">
               <a class="et_pb_button et_pb_custom_button_icon et_pb_button_1 et_pb_bg_layout_light" href="" data-icon=">" style='color:#00a02f;'>Get Started</a>
            </div>
         </div>
         <div class="et_pb_column et_pb_column_1_2 et_pb_column_3  blend_mode et-last-child">
            <div class="et_pb_module et_pb_text et_pb_text_2  et_pb_text_align_left">
               <div class="et_pb_text_inner">
                  <h2 style='color:#000;'>Green Energy For Your Home</h2>
               </div>
            </div>
            <div class="et_pb_button_module_wrapper et_pb_button_2_wrapper  et_pb_module ">
               <a class="et_pb_button et_pb_custom_button_icon et_pb_button_2 et_pb_bg_layout_light" href="" data-icon=">" style='color:#00a02f;'>Get Started</a>
            </div>
         </div>
      </div>
      -->
   
       <div class="et_pb_section et_pb_section_1 et_pb_fullwidth_section et_section_regular" style='position:absolute;top:0px;'>
          <div class="et_pb_module et_pb_fullwidth_image et_pb_fullwidth_image_0">
             <img loading="lazy" src="img/green-energy-21-1.png" alt="" title="" class="wp-image-221953" width="auto" height="auto" style='opacity:0.15;'>
          </div>
       </div>
   </div>

   <div id='section0' class="et_pb_section et_pb_section_0 et_section_regular mt-5" style='min-height:550px;background-color:#f2f2f2;box-shadow:3px 0px 12px #ddd;'>
      <h3 style='text-align:center;margin-top:-20px;'>Stats</h3>
      <div class="et_pb_row et_pb_row_2">
        <div class="wrapper">
          <h5 style='font-size:18px;text-align:center;margin-bottom:50px;'>
            CO2 Tonnes Offseted <br /><span style='font-size:12px;'>(OFFS Token)</span>
          </h5>
          <div class="progressbar-wrapper" style='margin-top:60px;'>
              <div class="progressbar">
                  <span style='margin-top:-70px;position:absolute;'>
                    12 Tonnes
                  </span>
                  <span style='margin-top:-50px;position:absolute;font-size:12px;'>
                    0.001%
                  </span>
                  <div class="side front">
                      <div class="bar"></div>
                  </div>
                  <div class="side back">
                      <div class="bar"></div>
                  </div>
                  <div class="side top">
                      <div class="bar"></div>
                  </div>
                  <div class="side bottom">
                      <div class="bar"></div>
                  </div>
                  <div class="side left"></div>
              </div>
          </div>
          <div class="et_pb_button_module_wrapper et_pb_button_0_wrapper  et_pb_module" style='position:absolute;bottom:-80px;left:200px;opacity:0.75;transform:scale(0.7);'>
             <a class="et_pb_button et_pb_custom_button_icon et_pb_button_0 et_pb_bg_layout_light" href="" data-icon=">" @click.prevent="initWallet()">Purchase</a>
          </div>
        </div>
        <div class="wrapper-right" style='width:50%;right:0;position:absolute;'>
          <h5 style='font-size:18px;text-align:center;margin-bottom:50px;'>
            CO2 DAI Pool <br /><span style='font-size:12px;'>(Round 1 - Aave)</span>
          </h5>

          <div>
            <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" style="display: none;">
              <symbol id="wave">
                <path d="M420,20c21.5-0.4,38.8-2.5,51.1-4.5c13.4-2.2,26.5-5.2,27.3-5.4C514,6.5,518,4.7,528.5,2.7c7.1-1.3,17.9-2.8,31.5-2.7c0,0,0,0,0,0v20H420z"></path>
                <path d="M420,20c-21.5-0.4-38.8-2.5-51.1-4.5c-13.4-2.2-26.5-5.2-27.3-5.4C326,6.5,322,4.7,311.5,2.7C304.3,1.4,293.6-0.1,280,0c0,0,0,0,0,0v20H420z"></path>
                <path d="M140,20c21.5-0.4,38.8-2.5,51.1-4.5c13.4-2.2,26.5-5.2,27.3-5.4C234,6.5,238,4.7,248.5,2.7c7.1-1.3,17.9-2.8,31.5-2.7c0,0,0,0,0,0v20H140z"></path>
                <path d="M140,20c-21.5-0.4-38.8-2.5-51.1-4.5c-13.4-2.2-26.5-5.2-27.3-5.4C46,6.5,42,4.7,31.5,2.7C24.3,1.4,13.6-0.1,0,0c0,0,0,0,0,0l0,20H140z"></path>
              </symbol>
            </svg>
            <div class="box">
              <div class="percent">
                <p class="percentNum" id="count" style='font-size:14px;text-align:center;margin-bottom:0px;padding-bottom:0px;color:#212529;'>1602 DAI</p>
                <p class="percentB" style='font-size:11px;text-align:center;'>(12 % APY)</p>
                <p style='text-align:center;'>{{tonnesOffseted | round(4)}} TCO2</p>
              </div>
              <div id="water" class="water">
                <svg viewBox="0 0 560 20" class="water_wave water_wave_back">
                  <use xlink:href="#wave"></use>
                </svg>
                <svg viewBox="0 0 560 20" class="water_wave water_wave_front">
                  <use xlink:href="#wave"></use>
                </svg>
              </div>
            </div>
          </div>

          <div class="et_pb_button_module_wrapper et_pb_button_5_wrapper  et_pb_module" style='position:absolute;bottom:-80px;left:200px;opacity:0.75;transform:scale(0.7);'>
             <a class="et_pb_button et_pb_custom_button_icon et_pb_button_5 et_pb_button_6 et_pb_bg_layout_light" href="" data-icon=">" @click.prevent="initWallet()">Diposit</a>
          </div>
        </div>
      </div>
   </div>

   <div id='section2' class="et_pb_section et_pb_section_2 et_pb_with_background et_section_regular mt-5">
      <div class="et_pb_row et_pb_row_2">
         <div class="et_pb_column et_pb_column_1_3 et_pb_column_4  blend_mode et_pb_column_empty"></div>
         <div class="et_pb_column et_pb_column_2_3 et_pb_column_5  blend_mode et-last-child">
            <div class="et_pb_module et_pb_text et_pb_text_3  et_pb_text_align_left et_pb_bg_layout_light">
               <div class="et_pb_text_inner">
                  <h2 style='font-size:3em;'>Climate change is due the human <strong>activity</strong> and <strong>inactivity</strong>.</h2>
                  <div class="et_pb_button_module_wrapper et_pb_button_3_wrapper  et_pb_module" style='text-align:right;margin-top:20px;margin-bottom:-20px;'>
                       <a class="et_pb_button et_pb_custom_button_icon et_pb_button_3 et_pb_bg_layout_light" href="app" data-icon=">" @click.prevent="initWallet()">Act Now!</a>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <div class="et_pb_row et_pb_row_3">
         <div class="et_pb_column et_pb_column_1_2 et_pb_column_6  blend_mode">
            <div class="et_pb_module et_pb_image et_pb_image_2">
               <span class="et_pb_image_wrap has-box-shadow-overlay">
                  <div class="box-shadow-overlay"></div>
                  <img loading="lazy" src="img/pollution.jpeg" alt="" title="" class="wp-image-221955" width="auto" height="auto">
               </span>
            </div>
         </div>
         <div class="et_pb_column et_pb_column_1_2 et_pb_column_7  blend_mode et-last-child" style='width:45%;'>
            <div class="et_pb_module et_pb_image et_pb_image_3 has-box-shadow-overlay" style='box-shadow: 55px 50px 110px -55px rgba(0,0,0,0.74);'>
               <div class="box-shadow-overlay"></div>
               <span class="et_pb_image_wrap ">
                    <img loading="lazy" src="img/forest.jpg" alt="" title="" class="wp-image-221956" width="auto" height="auto">
                </span>
            </div>
         </div>
      </div>
      <div class="et_pb_row et_pb_row_4">
         <div class="et_pb_column et_pb_column_1_2 et_pb_column_8  blend_mode">
            <div class="et_pb_module et_pb_text et_pb_text_4  et_pb_text_align_left et_pb_bg_layout_light">
               <div class="et_pb_text_inner">
                  <p style='text-align:left;font-size:26px;padding:10px 20px 0px;'>With GreenChain you can <strong>offset your emissions of CO2 generated by the Ethereum</strong> Blockchain in a easy and simple way! <br /><br />And you will get <strong>OFFS Tokens.</strong></p>
               </div>
            </div>
            <div class="et_pb_button_module_wrapper et_pb_button_3_wrapper  et_pb_module" style='text-align:center;margin-top:30px;'>
               <a class="et_pb_button et_pb_custom_button_icon et_pb_button_3 et_pb_bg_layout_light" href="" data-icon=">" @click.prevent="initWallet()">Offset Now!</a>
            </div>
            <div class="et_pb_button_module_wrapper et_pb_button_4_wrapper  et_pb_module" style='text-align:center;margin-top:30px;'>
               <a class="et_pb_button et_pb_custom_button_icon et_pb_button_4 et_pb_bg_layout_light" href="" data-icon=">">Learn More</a>
            </div>
         </div>
         <div class="et_pb_column et_pb_column_1_3 et_pb_column_9  blend_mode" style='margin-top:10px;margin-left:50px;'>
            <div class="et_pb_module et_pb_image et_pb_image_4">
               <span class="et_pb_image_wrap has-box-shadow-overlay">
                  <div class="box-shadow-overlay"></div>
                  <img loading="lazy" src="img/green-energy-01.jpg" alt="" title="" class="wp-image-221957" width="auto" height="auto">
               </span>
            </div>
         </div>
         <div class="et_pb_column et_pb_column_1_3 et_pb_column_10  blend_mode et-last-child et_pb_column_empty"></div>
      </div>
   </div>

   <!--
   <div id='section3' class="et_pb_section et_pb_section_3 et_pb_with_background et_section_specialty">
      <div class="et_pb_row" style='display: flex;align-items: center;justify-content: center;'>
         <div class="et_pb_column et_pb_column_2_3 et_pb_column_11   et_pb_specialty_column  blend_mode">
            <div class="et_pb_row_inner et_pb_row_inner_0">
               <div class="et_pb_column et_pb_column_4_4 et_pb_column_inner et_pb_column_inner_0 et-last-child">
                  <div class="et_pb_module et_pb_text et_pb_text_5  et_pb_text_align_center et_pb_bg_layout_light">
                     <div class="et_pb_text_inner">
                        <h2>Our Products</h2>
                        <p>Nulla quis lorem ut libero malesuada feugiat. Lorem ipsum dolor sit 
                           amet, consectetur adipiscing elit. Proin eget tortor risus. Proin eget 
                           tortor risus. Pellentesque
                        </p>
                     </div>
                  </div>
               </div>
            </div>
            <div class="et_pb_row_inner et_pb_row_inner_1">
               <div class="et_pb_column et_pb_column_1_3 et_pb_column_inner et_pb_column_inner_1">
                  <div class="et_pb_module et_pb_blurb et_pb_blurb_0  et_pb_text_align_center  et_pb_blurb_position_top et_pb_bg_layout_light">
                     <div class="et_pb_blurb_content">
                        <div class="et_pb_main_blurb_image"><span class="et_pb_image_wrap"><img loading="lazy" src="img/green-energy-icon-11-1.png" alt="" class="et-waypoint et_pb_animation_top wp-image-221959" width="64" height="64"></span></div>
                        <div class="et_pb_blurb_container">
                           <h4 class="et_pb_module_header"><span>Lorem Ipsum Dolor</span></h4>
                           <div class="et_pb_blurb_description">Vivamus sed arcu, sed posuere tortor. </div>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="et_pb_column et_pb_column_1_3 et_pb_column_inner et_pb_column_inner_2 et-last-child">
                  <div class="et_pb_module et_pb_blurb et_pb_blurb_1  et_pb_text_align_center  et_pb_blurb_position_top et_pb_bg_layout_light">
                     <div class="et_pb_blurb_content">
                        <div class="et_pb_main_blurb_image"><span class="et_pb_image_wrap"><img loading="lazy" src="img/green-energy-icon-1.png" alt="" class="et-waypoint et_pb_animation_top wp-image-221960" width="64" height="64"></span></div>
                        <div class="et_pb_blurb_container">
                           <h4 class="et_pb_module_header"><span>Amet Sit Conset</span></h4>
                           <div class="et_pb_blurb_description">
                              <p>Vivamus sed arcu, sed posuere tortor.</p>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
   -->

   <div id='section4' class="et_pb_section et_pb_section_4 et_section_regular et_pb_section_sticky et_pb_section_sticky_mobile">
      <div class="et_pb_row et_pb_row_5">
         <div class="et_pb_column et_pb_column_4_4 et_pb_column_13  blend_mode et-last-child">
            <div class="et_pb_module et_pb_image et_pb_image_5">
               <span class="et_pb_image_wrap "><img loading="lazy" src="img/green-energy-26.png" alt="" title="" class="wp-image-221961" width="auto" height="auto"></span>
            </div>
         </div>
      </div>
      <div class="et_pb_row et_pb_row_6 et_pb_gutters2 et_pb_row_1-4_1-4_1-2">
         <div class="et_pb_column et_pb_column_1_4 et_pb_column_14  blend_mode">
            <div class="et_pb_module et_pb_text et_pb_text_6  et_pb_text_align_center et_pb_bg_layout_dark" style='border:12px solid #0003;'>
               <div class="et_pb_text_inner">
                  <h4 style='font-size:3em;'>10.49 TWh</h4>
                  <p style='font-size:18px;'>Annualized Total Electrical Energy</p>
               </div>
            </div>
         </div>
         <div class="et_pb_column et_pb_column_1_4 et_pb_column_15  blend_mode">
            <div class="et_pb_module et_pb_text et_pb_text_7  et_pb_text_align_center et_pb_bg_layout_dark" style='border:12px solid #0003;'>
               <div class="et_pb_text_inner">
                  <h4 style='font-size:3em;'>26.09 kWh</h4>
                  <p style='font-size:18px;'>Footprint per Single Transaction</p>
               </div>
            </div>
         </div>
         <div class="et_pb_column et_pb_column_1_2 et_pb_column_16  blend_mode et-last-child">
            <div class="et_pb_module et_pb_text et_pb_text_8  et_pb_text_align_left et_pb_bg_layout_light">
               <div class="et_pb_text_inner text-center">
                  <br />
                  <h2>Know Your Consumtion</h2>
                  <br />
                  <p style='padding:0px 30px;text-align:left;font-size:22px;'>Calculate how many tonnes of CO2 you generated by your Ethereum & DeFi usage & pay for offset them by purchassing official carbon credits.
                  </p>
                  <br />
               </div>
            </div>
            <div class="et_pb_button_module_wrapper et_pb_button_5_wrapper  et_pb_module" style='text-align:center;'>
               <a class="et_pb_button et_pb_custom_button_icon et_pb_button_5 et_pb_bg_layout_light" href="" data-icon=">" @click.prevent="initWallet()">Connect</a>
            </div>
         </div>
      </div>
      <div class="et_pb_row et_pb_row_7 et-last-child">
         <div class="et_pb_column et_pb_column_1_2 et_pb_column_17  blend_mode et_pb_column_empty"></div>
         <div class="et_pb_column et_pb_column_1_2 et_pb_column_18  blend_mode et-last-child et_pb_row_sticky">
            <div class="et_pb_module et_pb_image et_pb_image_6 et_pb_image_sticky">
               <span class="et_pb_image_wrap ">
                    <img loading="lazy" src="img/green-energy-27.png" alt="" title="" class="wp-image-221962" width="auto" height="auto">
                </span>
            </div>
         </div>
      </div>
   </div>

   <div id='section5' class="et_pb_section et_pb_section_5 et_pb_fullwidth_section et_section_regular">
      <div class="et_pb_module et_pb_fullwidth_image et_pb_fullwidth_image_1">
         <img loading="lazy" src="img/green-energy-47.jpg" alt="" title="" class="wp-image-221963" width="auto" height="auto">
      </div>
   </div>

   <div id='section6' class="et_pb_section et_pb_section_6 et_pb_with_background et_section_regular">
      <div class="et_pb_row et_pb_row_8">
         <div class="et_pb_column et_pb_column_4_4 et_pb_column_19  blend_mode et-last-child">
            <div class="et_pb_module et_pb_image et_pb_image_7">
               <span class="et_pb_image_wrap ">
                    <img loading="lazy" src="img/green-energy-icon-18-2.png" alt="" title="" class="wp-image-221964" width="auto" height="auto">
                </span>
            </div>
            <div class="et_pb_module et_pb_text et_pb_text_9  et_pb_text_align_center et_pb_bg_layout_light">
               <div class="et_pb_text_inner">
                  <h2>Ready to Make Blockchain more Sustainable?</h2>
                  <p style='font-size:22px;margin-top:30px;'><strong>Only 5%</strong> of Ethereum enegy comes from <strong>renewable energy</strong>. We could make it better by <strong>offsetting</strong> our consumtion!
                  </p>
               </div>
            </div>
         </div>
      </div>
      <div class="et_pb_row et_pb_row_9">
         <div class="et_pb_column et_pb_column_4_4 et_pb_column_20  blend_mode et-last-child">
            <div class="et_pb_module et_pb_divider et_pb_divider_0 et_pb_divider_position_ et_pb_space">
               <div class="et_pb_divider_internal"></div>
            </div>
         </div>
      </div>
   </div>

   <div id='section7' class="et_pb_section et_pb_section_7 et_pb_equal_columns et_section_specialty">
      <div class="et_pb_row">
         <div class="et_pb_column et_pb_column_1_2 et_pb_column_21   et_pb_specialty_column  blend_mode">
            <div class="et_pb_row_inner et_pb_row_inner_2">
               <div class="et_pb_column et_pb_column_4_4 et_pb_column_inner et_pb_column_inner_3 et-last-child">
                  <div class="et_pb_module et_pb_text et_pb_text_10  et_pb_text_align_center et_pb_bg_layout_light">
                     <div class="et_pb_text_inner">
                        <h2>How It Works</h2>    
                     </div>
                  </div>
               </div>
            </div>
            <div class="et_pb_row_inner et_pb_row_inner_3 et_pb_gutters2 et_pb_row_1-6_1-6_1-6">
               <div class="et_pb_column et_pb_column_1_6 et_pb_column_inner et_pb_column_inner_4">
                  <div class="et_pb_module et_pb_blurb et_pb_blurb_2  et_pb_text_align_center  et_pb_blurb_position_top et_pb_bg_layout_light">
                     <div class="et_pb_blurb_content">
                        <div class="et_pb_main_blurb_image"><span class="et_pb_image_wrap"><img loading="lazy" src="img/green-energy-icon-7-1.png" alt="" class="et-waypoint et_pb_animation_top wp-image-221965" width="64" height="64"></span></div>
                        <div class="et_pb_blurb_container">
                           <h4 class="et_pb_module_header"><span>Calculate Your Emissions</span></h4>
                           <div class="et_pb_blurb_description">
                              <p style='font-size:15px;'>With GreenChain it's as easy as click a button. Try it!</p>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="et_pb_column et_pb_column_1_6 et_pb_column_inner et_pb_column_inner_5">
                  <div class="et_pb_module et_pb_blurb et_pb_blurb_3  et_pb_text_align_center  et_pb_blurb_position_top et_pb_bg_layout_light">
                     <div class="et_pb_blurb_content">
                        <div class="et_pb_main_blurb_image"><span class="et_pb_image_wrap"><img loading="lazy" src="img/green-energy-icon-13-1.png" alt="" class="et-waypoint et_pb_animation_top wp-image-221966" width="64" height="64"></span></div>
                        <div class="et_pb_blurb_container">
                           <h4 class="et_pb_module_header"><span>Purchase Carbon Credits</span></h4>
                           <div class="et_pb_blurb_description">
                              <p style='font-size:15px;'>With this credits you will suport green projects arround the world.</p>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="et_pb_column et_pb_column_1_6 et_pb_column_inner et_pb_column_inner_6 et-last-child">
                  <div class="et_pb_module et_pb_blurb et_pb_blurb_4  et_pb_text_align_center  et_pb_blurb_position_top et_pb_bg_layout_light">
                     <div class="et_pb_blurb_content">
                        <div class="et_pb_main_blurb_image"><span class="et_pb_image_wrap"><img loading="lazy" src="img/green-energy-icon-3-1.png" alt="" class="et-waypoint et_pb_animation_top wp-image-221967" width="64" height="64"></span></div>
                        <div class="et_pb_blurb_container">
                           <h4 class="et_pb_module_header"><span>Earn & Use OFFS Tokens</span></h4>
                           <div class="et_pb_blurb_description">
                              <p style='font-size:15px;'><strong>1 tonne</strong> of CO2 equals to <strong>1 OFFS</strong> token</p>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <div class="et_pb_row_inner et_pb_row_inner_4">
               <div class="et_pb_column et_pb_column_4_4 et_pb_column_inner et_pb_column_inner_7 et-last-child">
                  <div class="et_pb_button_module_wrapper et_pb_button_6_wrapper et_pb_button_alignment_center et_pb_module ">
                     <a class="et_pb_button et_pb_custom_button_icon et_pb_button_6 et_pb_bg_layout_light" href="" data-icon=">" @click.prevent="initWallet()">Connect</a>
                  </div>
               </div>
            </div>
         </div>
         <div class="et_pb_column et_pb_column_1_2 et_pb_column_22 blend_mode et_pb_column_single">
            <div class="et_pb_module et_pb_text et_pb_text_11  et_pb_text_align_center et_pb_bg_layout_light">
               <div class="et_pb_text_inner">
                  <h2>What You Get</h2>
                  <p style='text-align: justify;font-size:14px;padding:0px 20px;'>
                    <strong>OFFS is a token pegged to 1 Tonne of CO2.</strong>
                    <br /><br />For each 1 OFFS emmited it represents a sustraction equivalent to 1 Tonne of CO2. This way, you could contribute fighting climate emergency, help restoring forest and protect different species.
                  </p>
               </div>
            </div>
            <div class="et_pb_module et_pb_image et_pb_image_8">
               <span class="et_pb_image_wrap ">
                    <img loading="lazy" src="img/green-energy-24.png" alt="" title="" class="wp-image-221968" width="auto" height="auto">
                </span>
            </div>
         </div>
      </div>
   </div>

   <div id='section8' class="et_pb_section et_pb_section_8 et_section_regular">
      <div class="et_pb_row et_pb_row_10">
         <div class="et_pb_column et_pb_column_1_2 et_pb_column_23  blend_mode et_pb_column_empty"></div>
         <div class="et_pb_column et_pb_column_1_2 et_pb_column_24  blend_mode et-last-child">
            <div class="et_pb_module et_pb_image et_pb_image_9">
               <span class="et_pb_image_wrap ">
                    <img loading="lazy" src="img/green-energy-23.png" alt="" title="" class="wp-image-221969" width="auto" height="auto">
               </span>
            </div>
         </div>
      </div>
   </div>

   <Footer />
 </div>
</template>

<script>
import Footer from "@/components/Footer.vue";

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
  network: "ganache", // optional
  cacheProvider: false, // optional
  providerOptions // required
});

export default {
  name: 'Landing',
  components: {
    'Footer': Footer
  },
  data: function() {
    return {
      tonnesOffseted: 12,
      interval: null
    }
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
  },
  mounted () {
    this.interval = setInterval(() => {
      this.tonnesOffseted += 0.0001;
    }, 1000);
  },
}
</script>
  
<style>
.wrapper {
    width: 50%;
    min-height: 300px;
    position: absolute;
    display: block;
}
.progressbar-wrapper {
    width: 300px;
    height: 60px;
    top: 50%;
    left: 50%;
    position: absolute;
    transform: translate(-50%, -50%);
}
.progressbar {
    width: 100%;
    height: 100%;
    transform-style: preserve-3d;
    transform: rotateX(-20deg) rotateY(-30deg);
}
.side {
    width: 100%;
    height: 100%;
    background-color: rgba(254, 254, 254, 0.3);
    top: 0;
    left: 0;
    position: absolute;
}
.bottom {
    box-shadow: 10px 10px 50px 5px rgba(90, 90, 90, 0.7);
    transform: rotateX(90deg);
    transform-origin: bottom;
}
.top {
    transform: translate(0, -100%) rotateX(90deg);
    transform-origin: bottom;
}
.back {
    transform: translateZ(-60px);
}
.left {
    width: 60px;
    transform: rotateY(90deg);
    transform-origin: left;
    background-color: rgb(0, 160, 47);
}
.bar {
    height:100%;
    background-color: rgb(0, 160, 47);
    box-shadow: 5px 5px 50px 5px rgba(6, 164, 23, 0.14);
    width:1%;
}

/* Water filler */

.box {
  height: 200px;
  width: 200px;  
  transform: translate(-50%, -50%);
  border-radius: 100%;
  overflow: hidden;
  position: relative;
  top: 80px;
  left: 50%;
  box-shadow: 3px 3px 6px #3cb45f33;
  border: 1px solid #039b2f63;
}
.box .percent {
  position: absolute;
  left: 0;
  top: 20px;
  z-index: 3;
  width: 100%;
  height: 100%;
  display: block;
  align-items: center;
  justify-content: center;
  color: #555;
  font-size: 20px;
}
.box .water {
  position: absolute;
  left: 0;
  top: -50px;
  z-index: 2;
  width: 100%;
  height: 100%;
  transform: translate(0, 100%);
  background: #3cb45f;
  transition: all 0.3s;
}
.box .water_wave {
  width: 200%;
  position: absolute;
  bottom: 100%;
}
.box .water_wave_back {
  right: 0;
  fill: #8eb98a;
  -webkit-animation: wave-back 2.8s infinite linear;
          animation: wave-back 2.8s infinite linear;
}
.box .water_wave_front {
  left: 0;
  fill: #3cb45f;
  margin-bottom: -1px;
  -webkit-animation: wave-front 1.4s infinite linear;
          animation: wave-front 1.4s infinite linear;
}

@-webkit-keyframes wave-front {
  100% {
    transform: translate(-50%, 0);
  }
}

@keyframes wave-front {
  100% {
    transform: translate(-50%, 0);
  }
}
@-webkit-keyframes wave-back {
  100% {
    transform: translate(50%, 0);
  }
}
@keyframes wave-back {
  100% {
    transform: translate(50%, 0);
  }
}
</styles>