<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"> <!--<![endif]-->
<head id="Head1" runat="server">

<!------login check--->
    <script src="assets/js/login.js"></script>
    
<!--------login end---->

<!----subscribe form-->
    <link href="contact_form/css/default.css" rel="stylesheet" />
<script type="text/javascript" src="../contact_form/js/jquery-1.2.6.pack.js"></script>
<%--<script src="../contact_form/js/subscribe.js"></script>--%>
<!--subscribe form end----->

    <!-- Basic Page Needs
    ================================================== -->
    <meta charset="utf-8"/>
    <title>Leadsys®</title>
    <meta name="description" content=""/>
    <meta name="author" content="lidplussdesign"/>
    
    <!-- Mobile Specific Metas
    ================================================== -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
    
    <!-- CSS
    ================================================== -->
    <link rel="stylesheet" href="assets/css/styles.css"/>
    
    <link rel="stylesheet" href="assets/css/color.css"/>
    <link rel="stylesheet" href="assets/css/color1.css"/>
     <!-- <link href="assets/css/footer.css" rel="stylesheet" />
   autumn skin -->
    <!-- <link rel="stylesheet" href="assets/css/autumn/color.css"> -->
    <!-- <link rel="stylesheet" href="assets/css/autumn/color1.css"> -->
    
    <!-- violet skin -->
    <!-- <link rel="stylesheet" href="assets/css/violet/color.css"> -->
    <!-- <link rel="stylesheet" href="assets/css/violet/color1.css"> -->
    
    <link rel="stylesheet" href="assets/css/button-colors.css"/>
    <link rel="stylesheet" href="assets/css/background.css"/> 
    
    
    <!-- JS
    ================================================== -->
    <script src="http://code.jquery.com/jquery-1.7.1.min.js"></script>
    
    <!-- jquery UI -->
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.15/jquery-ui.min.js"></script>
    <script type="text/javascript" src="assets/js/jqueryui.function.js"></script>
    <!-- jquery UI END-->
    
	<!-- layerslider 2.0 -->
    <link rel="stylesheet" href="assets/layerslider-2.0/layerslider/css/layerslider.css" type="text/css">
	<script src="assets/layerslider-2.0/layerslider/jQuery/jquery-easing-1.3.js" type="text/javascript"></script>
	<script src="assets/layerslider-2.0/layerslider/js/layerslider.kreaturamedia.jquery.js" type="text/javascript"></script>
	<script type="text/javascript" src="assets/layerslider-2.0/layerslider/js/layerslider.function.js"></script>
    <!-- layerslider 2.0 END-->
    
    <!-- nivoslider -->
    <link rel="stylesheet" href="assets/nivo-slider/nivo-slider.css" type="text/css" media="screen" />
    <link rel="stylesheet" type="text/css" media="screen" href="assets/css/nivo-slider-theme.css"/>
    <link rel="stylesheet" href="assets/nivo-slider/themes/456theme/456theme.css" type="text/css" media="screen" />
    <script type="text/javascript" src="assets/nivo-slider/jquery.nivo.slider.js"></script>
    <script type="text/javascript" src="assets/nivo-slider/nivo.slider.function.js"></script>
    <!-- nivoslider END-->

    <!-- superfish -->
    <link rel="stylesheet" type="text/css" href="assets/superfish-1.4.8/css/superfish.css" media="screen"/>
    <link rel="stylesheet" type="text/css" href="assets/css/superfish-theme.css" media="screen"/>
	<script type="text/javascript" src="assets/superfish-1.4.8/js/hoverIntent.js"></script>
	<script type="text/javascript" src="assets/superfish-1.4.8/js/superfish.js"></script>
	<script type="text/javascript" src="assets/js/superfish.function.js"></script>
    <!-- superfish END-->
    
    <!-- HoverAlls -->
    <link rel="stylesheet" type="text/css" media="screen" href="assets/hoveralls/css/hoveralls.css"/>
    <link rel="stylesheet" type="text/css" media="screen" href="assets/css/hoveralls-theme.css"/>
    <script type="text/javascript" src="assets/hoveralls/js/jquery.easing.1.3.min.js"></script>
    <script type="text/javascript" src="assets/hoveralls/js/jquery.hoveralls.min.js"></script>
    <script type="text/javascript" src="assets/hoveralls/js/jquery.hoveralls-functions.js"></script>
    <!-- HoverAlls END-->
    
    <!-- isotope -->
	<script type="text/javascript" src="assets/isotope/jquery.isotope.min.js"></script>
	<script type="text/javascript" src="assets/isotope/isotope.function.js"></script>
    <link rel="stylesheet" href="assets/isotope/css/style.css"/>
    <!-- isotope END-->
    
    <!-- prettyPhoto-->
    <link rel="stylesheet" type="text/css" media="screen" href="assets/prettyPhoto/prettyPhoto.css"/>
    <script type="text/javascript" language="javascript" src="assets/prettyPhoto/jquery.prettyPhoto.js"></script>
    <script type="text/javascript" language="javascript" src="assets/prettyPhoto/prettyPhoto.function.js"></script>
    <!-- prettyPhoto END-->
    
    <!-- Showbiz-->	
	<script type="text/javascript" src="assets/showbiz/services-plugin/js/jquery.easing.1.3.js"></script>	
	<script type="text/javascript" src="assets/showbiz/services-plugin/js/jquery.cssAnimate.mini.js"></script>	
	<script type="text/javascript" src="assets/showbiz/services-plugin/js/jquery.touchwipe.min.js"></script>	
	<script type="text/javascript" src="assets/showbiz/services-plugin/js/jquery.mousewheel.min.js"></script>	
    <script type="text/javascript" src="assets/showbiz/services-plugin/js/jquery.themepunch.services.js"></script>
    <script type="text/javascript" src="assets/showbiz/services-plugin/js/showbiz.function.js"></script>	
	<link rel="stylesheet" type="text/css" href="assets/showbiz/services-plugin/css/settings.css" media="screen" />
    <link rel="stylesheet" type="text/css" href="assets/css/showbiz-theme.css" media="screen"/>
    <!-- Showbiz END-->
    
    <!-- widget js -->
	<script type="text/javascript" src="assets/js/widget.function.js"></script>
    <!-- widget js END-->
    
    <!-- blog js -->
	<script type="text/javascript" src="assets/js/blog.function.js"></script>
    <!-- blog js END-->
    
    <!-- animate shadow js -->
    <script type="text/javascript" src="assets/js/jquery.animate-shadow-min.js"></script>
    <script type="text/javascript" src="assets/js/animate-shadow.function.js"></script>
    <!-- animate shadow END-->
    
    <!-- seaofclouds js -->
    <script type="text/javascript" src="assets/seaofclouds/jquery.tweet.js"></script> 
	<script type="text/javascript" src="assets/seaofclouds/twitter.function.js"></script>
    <!-- seaofclouds js END-->
 
    <!-- responsive iframe js -->
	<script type="text/javascript" src="assets/js/iframe.function.js"></script>
    <!-- responsive iframe js END-->
    
    <!-- social icons js -->
	<script type="text/javascript" src="assets/js/social.function.js"></script>
    <script type="text/javascript" src="assets/js/jquery.animate-colors-min.js"></script>
    <!-- social icons END-->
    
    <!-- mobile navi js -->
    <script src="assets/js/navigation.function.js"></script>
    <!-- mobile navi END-->
    
    <!-- callout js -->
    <script src="assets/js/callout.function.js"></script>
    <!-- callout js END-->
    
    <!-- grayscale js -->
    <script src="assets/js/grayscale.function.js"></script>
    <!-- grayscale js END-->
    
    <!--[if lt IE 9]>
    	<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    
    <link rel="stylesheet" href="assets/css/opera.css"/>
    
    <!-- Favicons
    ================================================== -->
    <link rel="shortcut icon" href="images/favicon.ico"/>
    <link rel="apple-touch-icon" href="images/apple-touch-icon.png"/>
    <link rel="apple-touch-icon" sizes="72x72" href="images/apple-touch-icon-72x72.png"/>
    <link rel="apple-touch-icon" sizes="114x114" href="images/apple-touch-icon-114x114.png"/>

</head>
<body>
 
 <script type="text/javascript">


     //$(document).ready(function () {
     //    var button = $('#bks');
     //    var box = $('#loginBox');
     //    var form = $('#loginForm');
     //    $(button).click(function (login) {
     //        $("#loginBox").slideDown("slow");
     //    });

     //});
     $(function () {
         var button = $('#headerMeta');
         var box = $('#loginBox');
         var form = $('#loginForm');
         button.removeAttr('href');
         button.mouseup(function (login) {
             box.toggle();
             button.toggleClass('active');
         });
         form.mouseup(function () {
             return false;
         });
         $(this).mouseup(function (login) {
             if (!($(login.target).parent('#loginButton').length > 0)) {
                 button.removeClass('active');
                 box.hide();
             }
         });
     });

</script>
<div id="wrap">
     <div id="header-bg"></div>
        <div id="header" class="container">
            <div class="ten columns">
                <div id="logo" class="clearfix">
                    <h1><a href="#"><img alt="alt" src="assets/images/logo.png"/> </a></h1>
                    <h5>Your Contact Builder</h5>
                </div>
            </div>
           
                <%--<div id="headerMeta" class="button small_button">
                    <%--<div class="meta-data light_shadow"><strong>Call Us Free: +44 (0) 123-456789</strong></div>
                    <div class="meta-data-wpml">
                        <a href="#" title="eng"><img alt="en" src="assets/images/flags/en.png"/></a>
                        <a href="#" title="de"><img alt="de" src="assets/images/flags/de.png"/></a>
                    </div>--%>

                    
                               

                   
            <!-- Login Starts Here -->
          
          <%--<a href="#" id="loginButton" style="text-decoration:none; color:white";><span>Login</span></a>
                </div>--%>
                
               <%-- <div style="clear:both"></div>--%>
           
                <div id="loginBox" style="display:none; color:black;" class="display_style  current">                
                    <form id="loginForm" action="../assets/php/sendEmail.php" method="post">
                        <fieldset id="body">
                            <fieldset>
                                <label for="user">User Name</label>
                                <input type="text" name="user" id="user" />
                            </fieldset>
                            <fieldset>
                                <label for="password">Password</label>
                                <input type="password" name="password" id="password" />
                            </fieldset>
                            <input type="submit" id="login" value="Sign in" />
                            <label for="checkbox"><input type="checkbox" id="checkbox" />Remember me</label>
                        </fieldset>
                        <span><a href="#">Forgot your password?</a></span>
                    </form>
                </div>
            
         

            
        </div>
        <div id="main">
            <div id="navi" class="display_style">
                <div class="container">
                    <div class="thirteen columns">
                         <ul class="navi light_shadow sf-menu">
                          
                            <li class="current"><a href="index.aspx"><strong>Home</strong></a></li>
                            <li ><a href="about.aspx"><strong>About</strong></a></li>
                            <li ><a href="demo_form/demopage.aspx"><strong>Demo</strong></a></li>
                           
                            <li><a href="contact_form/supportpage.aspx"><strong>Support</strong></a></li>
                      
                        </ul>
                        <div class="mobileNavi_wrap"></div>
                    </div>
                    <div class="three columns">
                       
                    </div>
                </div>
            </div>
            <div id="subHeader" class="layerslider">
            	<div id="layerslider" class="image_bg dark_bg" style="background-image: url(images/980x432-blur_photodune-1568277-road-m.jpg);">
                    <!-- slide 1 -->
        			<div class="ls-s1 ls-layer" style="slidedelay: 3000; slidedirection:top;">
                        <div class="ls-s1 twelve_columns light_shadow center" style="left: 50%; top: 20%; slidedirection: top;">
                            <h1>Prospect Management System</h1>
                            <p style="font-style: 16px;">Leadsys® delivers quality data researched and customized for Sales and Marketing Professionals across the globe through an online web application</p>
                        </div>
                        <span class="ls-s3 fourteen_columns" style="left: 50%; top: 69%; slidedirection: bottom; slideoutdirection: bottom;">
                            <img alt="alt" class="scale-with-grid" src="assets/layerslider-2.0/gallery1/ls_04.png" />
                        </span>
        			</div>
                    <!-- slide 2 -->
        			<div class="ls-s1 ls-layer" style="slidedelay: 3000; slidedirection:top;">
                        <%--<div id="newsletter">--%>
                        <div class="ls-s1 seven_columns light_shadow newsletter" style="left: 70%; top: 20%; slidedirection: right;">
                            <h1>Subscribe for our Newsletter</h1>
                        </div>
                        <div class="ls-s3 seven_columns newsletter" style="left: 70%; top: 50%; slidedirection: left;">
                            <p class="light_shadow"></p>
                           
                            <form class="newsletter" method="post" action="../contact_form/subscribe2.php">
                             <div id="subscribe">
                                <fieldset>
                                    <label class="error" for="email" id="email_error" style="color:red;">Enter Email</label>
                                    <input class="full-width" id="email" type="text" onfocus="if(this.value == 'Email*') { this.value = ''; }" value="Email*" onblur="if(this.value==''){this.value = 'Email*';}"/>
                                    <label class="error" for="name" id="name_error" style="color:red;">Enter First Name</label>
                                    <input class="first" id="name" type="text" onfocus="if(this.value == 'First Name*') { this.value = ''; }" value="First Name*" onblur="if(this.value==''){this.value = 'First Name*';}"/>
                                    <label class="error" for="lname" id="lname_error" style="color:red;">Enter Last Name</label>
                                    <input id="last" type="text" onfocus="if(this.value == 'Last Name*') { this.value = ''; }" value="Last Name*" onblur="if(this.value==''){this.value = 'Last Name*';}"/>
                                   
                                    <button type="button" class="full-width" name="submit" id="submit" value="Send">Subscribe Me!</button>
 
                                    <ul id="response" />
                                </fieldset>
                              <%--  <fieldset>
                                <label class="error" for="email" id="email_error">Email is required.</label> 
                                <input type="text" class="full-width" name="email" id="email" onfocus="if(this.value == 'Email*') { this.value = ''; }" value="Email*" onblur="if(this.value==''){this.value = 'Email*';}" />
                                <label class="error" for="name" id="name_error">First Name is required.</label>
                                 <input type="text" name="name" id="name" onfocus="if(this.value == 'First Name*') { this.value = ''; }" value="First Name*" onblur="if(this.value==''){this.value = 'First Name*';}"/>
	                        	<label class="error" for="name" id="lname_error">Last Name is required.</label>
                                 <input type="text" name="lname" id="lname" />
		                        
                                <label class="error" for="company" id="company_error">Company name is required</label>
                                <input type="text" name="comapny" id="company" />
      
		                       <label class="error" for="comment" id="comment_error">Comment is required.</label>
                               <textarea name="comments" id="comments" rows="5"></textarea>
		
                               <p><input class="full-width" type="submit" name="submit" id="submit" value="Submit"/></p>
		                        <ul id="response" />
                                </fieldset>--%>
                                </div>
                            </form>
                                                       
                           
                        </div>
                        <%--</div>--%>
                        <span class="ls-s3 six_columns" style="left: 24%; top: 55%; slidedirection: bottom; slideoutdirection: bottom;">
                            <img alt="alt" class="scale-with-grid" src="assets/layerslider-2.0/gallery1/ls_01.png" />
                        </span>
        			</div>
                    <!-- slide 3 
        			<div class="ls-s1 ls-layer" style="slidedelay: 3000; slidedirection:top;">
                        <div class="ls-s1 seven_columns light_shadow" style="left: 26%; top: 20%; slidedirection: right; slideoutdirection: right;">
                            <h1>Build Your Skin</h1>
                        </div>
                        <div class="ls-s3 seven_columns" style="left: 26%; top: 60%; slidedirection: left; slideoutdirection: left;">
                            <p class="light_shadow">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed pulvinar, felis fringillaconvallis rhoncus, lorem arcu feugiat nisi.</p>
                            <form class="newsletter">
                                <fieldset>
                                    <input class="full-width" id="email1" type="text" onfocus="if(this.value == 'Email*') { this.value = ''; }" value="Email*" onblur="if(this.value==''){this.value = 'Email*';}"/>
                                    <input class="first" id="first1" type="text" onfocus="if(this.value == 'First Name*') { this.value = ''; }" value="First Name*" onblur="if(this.value==''){this.value = 'First Name*';}"/>
                                    <input id="last1" type="text" onfocus="if(this.value == 'Last Name*') { this.value = ''; }" value="Last Name*" onblur="if(this.value==''){this.value = 'Last Name*';}"/>
                                    <button class="full-width" type="submit">Subscribe Me!</button>
                                </fieldset>
                            </form>
                            <hr class="mobile-device-hide"/>                            
                            <small class="mobile-device-hide" style="color: #ebebeb;"><strong style="color: #ebebeb;">*Newsletter form</strong> is not connected to any plugin, it's for demonstration.</small>                            
                        </div>
                        <span class="ls-s3 eight_columns" style="left: 72%; top: 50%; slidedirection: top;">
                            <img alt="alt" class="scale-with-grid" src="assets/layerslider-2.0/gallery1/ls_03.png" >
                        </span>
        			</div>-->
                    <!-- slide 4 -->
        			<div class="ls-s1 ls-layer" style="slidedelay: 3000; slidedirection:top;">
                        <div class="ls-s1 seven_columns light_shadow" style="left: 70%; top: 20%; slidedirection: left; slideoutdirection: left;">
                            <h1>Accelerate Prospecting</h1>
                        </div>
                        <div class="ls-s3 seven_columns" style="left: 70%; top: 40%; slidedirection: right; slideoutdirection: right;">
                            <p class="light_shadow">Leadsys® helps marketing team to build lists for targeted campaigns in seconds. It's easy to download in spreadsheets makes the data easy to integrate with any marketing tool or CRM.</p>
                       
                                                       
                                                  
                        </div>
                        <span class="ls-s3 four_columns" style="left: 15%; top: 50%; slidedirection: top;">
                            <img alt="alt" class="scale-with-grid" src="assets/layerslider-2.0/gallery1/ls_06.png" >
                        </span>
                        <span class="ls-s3 four_columns" style="left: 35%; top: 50%; slidedirection: bottom; slideoutdirection: bottom;">
                            <img alt="alt" class="scale-with-grid" src="assets/layerslider-2.0/gallery1/ls_02.png" />
                        </span>
        			</div>
                </div>                
            </div>
            <div id="callout">
                <div class="container">
                    <div class="twelve columns light_shadow">
                        <h3><span>Leadsys®</span> Prospect Management System</h3>
                        <p> "Leadsys® delivers quality prospect details researched and customized for Sales and Marketing Professionals across the globe through an online web application. Now, start improving your sales process with us."</p>
                    </div>
                    <div class="four columns right">
                        <%--<a class="button large_button compass callout-button" href="demo_form/demopage.aspx"><span></span>TAKE A DEMO</a>--%>
                        <p class="intro"><a href="./demo_form/demopage.aspx"  title="">Give it a try &raquo;</a></p>
                    </div>
                </div>
            </div>
            <div id="page" class="clearfix">
                <div class="container">
                    <div class="sixteen columns">
                     <h4>Business<span> Problems</span></h4>   
                            <hr />
                        <div class="module-widget widget clearfix">
                            <div class="four columns alpha" style="-webkit-box-shadow: 3px 5px 8px #666;-moz-box-shadow: 5px 5px 10px #666;box-shadow: 3px 5px 8px #666;">
                                <div class="module icon_48 left" style="padding:12px;">
                                    <span class="icon first1"></span>
                                    <h5 style="line-height: 21px;">Unable to find Business&nbsp; &nbsp; Prospects?</h5>
                                    <div class="clear"></div>
                                    <p style="text-align:justify;">Leadsys® brings you one Stop shop for all your Prospect worries. Now, find new prospects with the help of our specialized Live Data Members & Industry databases !</p>
                                   <br />
                                    <p class="intro" style="text-align: center;font-size:.8em;"><a href="../readmore.aspx" style="padding: 0.5em 0.8em;">Read More</a></p>
                                    <br />
                                </div>
                            </div>
                            <div class="four columns" style="-webkit-box-shadow: 3px 5px 8px #666;-moz-box-shadow: 5px 5px 10px #666;box-shadow: 3px 5px 8px #666;">
                                <div class="module icon_48 left" style="padding:12px;">
                                    <span class="icon first2"></span>
                                    <h5 style="line-height: 21px;">Still spending days to Generate&nbsp; &nbsp; Leads?</h5>
                                    <div class="clear"></div>
                                    <p style="text-align:justify;">Shorten your Lead generation cycle with Leadsys® quick service. Now, make optimal utilization of your team efforts instead of wasting it on social networks and online databases looking for leads.</p>
                                    <p class="intro" style="text-align: center;font-size:.8em;"><a href="../readmore.aspx" style="padding: 0.5em 0.8em;">Read More</a></p>
                                    <br />
                                </div>
                            </div>
                            <div class="four columns" style="-webkit-box-shadow: 3px 5px 8px #666;-moz-box-shadow: 5px 5px 10px #666;box-shadow: 3px 5px 8px #666;">
                                <div class="module icon_48 left" style="padding:12px;">
                                    <span class="icon first3"></span>
                                    <h5 style="line-height: 20px;">Always Wondering how to get Latest Contact data?</h5>
                                    <div class="clear"></div>
                                    <p style="text-align:justify;">Leadsys® Live data members work round the clock to provide you up-to-date contact details so that you never miss out on crucial opportunity.</p>
                                    <br /><br />
                                    <p class="intro" style="text-align: center;font-size:.8em;"><a href="../readmore.aspx" style="padding: 0.5em 0.8em;">Read More</a></p>
                                    <br />
                                </div>
                            </div>
                            <div class="four columns omega" style="-webkit-box-shadow: 3px 5px 8px #666;-moz-box-shadow: 5px 5px 10px #666;box-shadow: 3px 5px 8px #666;">
                                <div class="module icon_48 left" style="padding:12px; ">
                                    <span class="icon first4"></span>
                                    <h5 style="line-height: 20px;">Unable to find details as per your requirement?</h5>
                                    <div class="clear"></div>
                                    <p style="text-align:justify;">Leadsys® provides wide range of Customization to create your own unique database. Now, concentrate on your more important tasks while Leadsys® does your research.</p>
                                    <br />
                                    <p class="intro" style="text-align: center;font-size:.8em;"><a href="../readmore.aspx" style="padding: 0.5em 0.8em;">Read More</a></p>
                                    <br />
                                </div>
                            </div>
                        </div>
                        <div class="showbiz-widget clearfix">
                              <h4>Leadsys<span> Solution</span></h4>   
                            <hr />
                            <div class="showbiz left">
            					<div class="front-showbiz-1">
            						<ul>
                                        <!--	###############		-	SLIDE 1	-	###############	 -->
            							<li class="item">
                                            <div class="img" >
                                                <img alt="alt" class="scale-with-grid" src="images/firstbox.jpg"/> 
                                            </div>	
                                              <div class="info" style="text-align:justify;">
                                                <h6>Reach out to Targeted Prospects</h6>
                                                <p>Leadsys provides a quick access to relevant business prospects. Simplify the initial lead generation process for your team to maximize their efforts towards closure.</p>
                                            </div>
            							</li>
                                        <!--	###############		-	SLIDE 2	-	###############	 -->
            							<li class="item">
                                            <div class="img">
                                                <img alt="alt" class="scale-with-grid" src="images/secondbox.png"/> 
                                            </div>	
                                            <div class="info" style="text-align:justify;">
                                                <h6>Accelerate your Sales Process</h6>
                                                <p>Leadsys brings all your relevant business prospect details at your fingertips. Shorten your sales cycle by reaching out to millions with the help of customized lists.</p>
                                            </div>
            								
            							</li>
                                        <!--	###############		-	SLIDE 3	-	###############	 -->
            							<li class="item">
                                            <div class="img">
                                                <img alt="alt" class="scale-with-grid" src="images/thirdbox.png"/> 
                                            </div>	
                                            <div class="info" style="text-align:justify;">
                                                <h6>Generate more revenue and ROI</h6>
                                                <p>Leadsys helps businesses generate more return on their marketing spends. Reach out to targeted global prospects in a cost effective way and increase your Sales.</p>
                                            </div>
            							</li>
                                   </ul>
            						<div class="toolbar">
            							<div class="left"></div><div class="right"></div>
            						</div>
            					</div>
                            </div>
                            <!--	###############		-	Responsive Version	-	###############	 -->
                            <div class="showbiz-responsive">
                                <div class="one-third column alpha">
                                    <div class="img">
                                        <img alt="alt" class="scale-with-grid" src="images/firstbox.jpg"/>
                                    </div>	
                                    <div class="info" style="text-align:justify;">
                                        <h6>Reach out to Targeted Prospects</h6>
                                                <p>Leadsys provides a quick access to relevant business prospects. Simplify the initial lead generation process for your team to maximize their efforts towards closure.</p>
                                            </div>
                                </div>
                                <div class="one-third column">
                                    <div class="img">
                                        <img alt="alt" class="scale-with-grid" src="images/secondbox.png"/>
                                    </div>	
                                    <div class="info" style="text-align:justify;">
                                       <h6>Accelerate your Sales Process</h6>
                                                <p>Leadsys brings all your relevant business prospect details at your fingertips. Shorten your sales cycle by reaching out to millions with the help of customized lists.</p>
                                           </div>
                                </div>
                                <div class="one-third column omega">
                                    <div class="img">
                                        <img alt="alt" class="scale-with-grid" src="images/thirdbox.png"/>
                                    </div>	
                                    <div class="info" style="text-align:justify;">
                                        <h6 >Generate more revenue and ROI</h6>
                                        <p>Leadsys helps businesses generate more return on their marketing spends. Reach out to targeted global prospects in a cost effective way and increase your Sales.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                     <div class="clear"></div>
                    <div class="sixteen columns" >
                    <h4>What our<span> Clients say</span></h4>   
                           
                       <blockquote><p style="padding-left:20px;"> "A great option for Marketing and Sales Professionals in the IT Services, Software publishing, Software Consulting and ISV’s across the globe..."</p>
                       <h5 style="float:right; font-weight: bold; padding-right:30px;">- Steve Fischer, VP Marketing <span style="color:#9ad32d">WEBSTREAM</span></h5><br /></blockquote>
                    </div>
                   <!-- <div class="six columns right">
                        <%--<a class="button large_button compass callout-button" href="demo_form/demopage.aspx"><span></span>TAKE A DEMO</a>--%>
                        <p class="intro" style="text-align: center; padding-right:35px;"><a href="./demo_form/demopage.aspx"  >Register For Demo&raquo;</a></p>
                    </div>-->
               
                    </div><!--sixteen column-->

             </div>             
             

            <div id="footer">
                <div class="footer">
                    <div class="container">
                 
                           <div  class="social_link">   
                           <div class="twelve columns omega" style="padding-top:25px;">
                               <nav>  
		              <ul>
		            <li><a href="about.aspx">About</a></li>
		            <li><a href="demo_form/demopage.aspx">Demo</a></li>
		            <li><a href="contact_form/supportpage.aspx">Support</a></li>
                    <li><a href="terms.aspx">Terms</a></li>
		            <li><a href="privacy.aspx">Privacy</a></li>
		            <li> <p>© 2012 Leadsys®</p></li>
		          </ul>
		        </nav>
               
                          </div>
                          <!-- <div id="social" class="four columns alpha" style="float:left;">
                        <ul class="clearfix">
                        <li><a class="text_replace twitter" href="https://twitter.com/leadsys_pms" target="_blank">twitter</a></li>
                        <li><a class="text_replace facebook" href="https://www.facebook.com/pages/Leadsys/369413369846375" target="_blank">facebook</a></li>
                        <li><a class="text_replace linkedin" href="http://www.linkedin.com/company/2896865?trk=tyah" target="_blank">linkedin</a></li>
                        </ul>
                    </div>-->
                    </div>
               
                      
     </div>
     </div>
     </div>
        </div>
        <div id="subFooter">
            <div class="container">
               
               
            </div>
        </div>       
    </div>
    <script>

        $(function () {
            $("label.error").hide();

            // These first three lines of code compensate for Javascript being turned on and off. 
            // It simply changes the submit input field from a type of "submit" to a type of "button".

            //var paraTag = $('button#submit').parent('p');
            //$(paraTag).children('button').remove();
            //$(paraTag).append('<input type="button" name="submit" id="submit" value="Send" class="button"/>');
            $('#subscribe #submit').click(function () {
                $('#subscribe').append('<img src="images/ajax-loader.gif" class="loaderIcon" alt="Loading..." />');

                var name = $('input#name').val();
                var lname = $('input#lname').val();
                var email = $('input#email').val();

                if (email == "" || email == "Email*") {

                    $('#subscribe img.loaderIcon').fadeOut(1000);
                    $("label#email_error").show();
                    $('input#email').focus(function () {
                        $('input#email').css('border', '1px solid red');
                    });
                    return false;
                }
                if (name == "" || name == "First Name*") {

                    $('#subscribe img.loaderIcon').fadeOut(1000);
                    $("label#name_error").show();
                    $('input#name').focus(function () {
                        $('input#name').css('border', '1px solid red');
                    });
                    return false;
                }

                if (lname == "" || lname == "Last Name*") {

                    $('#subscribe img.loaderIcon').fadeOut(1000);
                    $("label#lname_error").show();
                    $('input#lname').focus(function () {
                        $('input#lname').css('border', '1px solid red');
                    });
                    return false;
                }
                $.ajax({
                    type: 'post',
                    url: '../contact_form/subscribe2.php',
                    data: '&name=' + name + '&lname=' + lname + '&email=' + email,

                    success: function (results) {
                               $('#subscribe img.loaderIcon').fadeOut(1000);
                        $('ul#response').html(results);
                        $('.newsletter').html("<div id='message'></div>");
                        $('#message').html("<h2>Subscription form submitted!!</h2>").append("<div class='box check light_shadow'>Thank You For Newsletter Subscription.</div>");

                    }
                });
            });
        });

    </script>

<!-- End Document
================================================== -->

</body>
</html>






