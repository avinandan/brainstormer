<?php
  session_start();
 ?>
 
 <!DOCTYPE html>
<html lang="en">
<head>
<title>Brainstormer 2013</title>
<meta charset="utf-8">
 <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="description" content="The inter school/college quiz-mania organized by PHOENIX official tech-club of Netaji Subhash Engineering College,Kolkata" /> 
	<meta name="keywords" content="brainstormer, brainstormer 2013, phoenix, nsec ,nsecollege, quiz mania ,quiz, mania, The inter school/college quiz-mania,  netaji subhash engineering college, quiz in kolkata, gk test" /> 
    <meta property="og:title" content="Brainstormer 2013/> 
	<meta property="og:type" content="website"/> 
	<meta property="og:url" content="http://brainstormer.co.in"/> 
    <meta property="og:image" content="http://brainstormer.co.in/images/logo1.png"/> 
    <meta property="og:site_name" content="ShareThis Inc."/> 
    <meta property="og:description" content="The inter school/college quiz-mania organized by PHOENIX official tech-club of Netaji Subhash Engineering College,Kolkata"/>
    <meta name="MSSmartTagsPreventParsing" content="true" />
<link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
<link rel="stylesheet" href="css/layout.css" type="text/css" media="all">
<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
<script type="text/javascript" src="js/jquery-1.4.2.js" ></script>
<script type="text/javascript" src="js/jquery.nivo.slider.pack.js"></script>
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-replace.js"></script>
<script type="text/javascript" src="js/CabinSketch_700.font.js"></script>
<script type="text/javascript" src="js/EB_Garamond_400.font.js"></script>

<script type="text/javascript">
function hero(id,text)
{
document.getElementById(id).innerHTML=text;
}
function gone(id)
{
document.getElementById(id).innerHTML='';
}
function check(text)
{
var l = text.length;
if(l<5)
    hero('passwd','Enter a password should be at least 5 characters long and maximum 32 characters long');
else
    gone("passwd");
}
function emailcheck(text)
{
var s=text
if (s.indexOf("@")==-1){
alert("Please input a valid email address!");
document.register.email.focus();
}
}
</script>


<!-- [if lt IE 9]>
<script type="text/javascript" src="js/html5.js"></script>
<style type="text/css">
.bg {behavior:url(js/PIE.htc)}
</style>
<![endif]-->
<!-- [if lt IE 7]>
<div style='clear:both;text-align:center;position:relative'>
	<a href="http://www.microsoft.com/windows/internet-explorer/default.aspx?ocid=ie6_countdown_bannercode"><img src="http://www.theie6countdown.com/images/upgrade.jpg" border="0" alt="" /></a>
</div>
<![endif]-->
</head>
<body id="page1">
<div class="main">
<!-- header -->
	<header>
		<div class="wrapper">
			<nav>
				<ul id="menu">
					<li><a href="index.html">Home</a></li>
					<li><a href="login.php" onclick="home();">Login</a></li>
					<li><a href="register.php" onclick="unhided2();">Register</a></li>
					<li><a href="#" onclick="unhided3();">FAQ</a></li>
					
				</ul>
			</nav>
		</div>
		<h1><a href="index.html" id="logo">Brainstormer 2013</a></h1>
	</header><div class="ic"></div>
<!-- / header -->
<!-- content -->
	<section id="content">
		<div class="wrapper" style="height:850px">
		<article class="col1">
			<div class="pad_left1 pad_bot1">
			 <h2>Register Here</h2>
				<hr/ width="180" align="left">  <br/>
				  <?php
	                 if( isset($_SESSION['ERRMSG_ARR']) && is_array($_SESSION['ERRMSG_ARR']) && count($_SESSION['ERRMSG_ARR']) >0 ) {
		             echo '<ul>';
		             foreach($_SESSION['ERRMSG_ARR'] as $msg) {
			         echo '<li>',$msg,'</li>'; 
		             }
		             echo '</ul>';
					 echo '<hr/ width="180" align="left">  <br/>';
		             unset($_SESSION['ERRMSG_ARR']);
	                 }
                   ?>
				   
				  <form name="register" method="post" action="reg-exec.php">
				  Group Name: <br/> <input type="text" size="30" name="gname" onfocus="if (this.value == 'Your group name') {this.value=''}" 
				  value="Your group name" onblur="if (this.value=='') {hero('grp','Enter your desired goup name')}" onclick="gone('grp')" size="30"/>
				  <div id="grp"></div></br>
				  
				  Password:<br/> <input type="password" size="30" name="passwd"  
				  onblur="check(this.value)"  maxlength="32" onclick="gone('passwd')" size="30"/>
				  <div id="passwd"></div></br>
				  
				  Confirm password:<br/> <input type="password" size="30" name="cpasswd"  
				  onblur="if (this.value!=passwd.value) {hero('cpasswd','Your passwords do not match');} else gone('cpasswd');"  size="30"/>
				  <div id="cpasswd"></div></br>
				  
				  Name:<br/><input type="text" name="name1" size="30" value="Your full name" onblur="if (this.value=='') {hero('name','Please enter your full name')}" onfocus="if (this.value == 'Your full name') {this.value=''}" onclick="gone('name')"/><div id="name"></div><br/>
				  
				  Email:<br/><input type="text" name="email" size="30" value="Your email id" onblur="emailcheck(this.value);" onfocus="if (this.value == 'Your email id') {this.value=''}" onclick="gone('email')"/><div id="email"></div><br/>
				  
				  Contact:</br><input type="text" name="mobile" size="30" maxlength="10" value="Enter your 10 digit mobile no." onblur="if (this.value=='') {hero('mobile','Please enter your 10 digit mobile number.')}" onfocus="if (this.value == 'Enter your 10 digit mobile no.') {this.value=''}" onclick="gone('mobile')"/><div id="mobile"></div><br/>
				  
				  Institute Type:<br/>
				  <select name="ins_type" size="1">
				  <option value="--Select--">--Select--</option>
				  <option value="School">School</option>
				  <option value="College">College</option>
				  </select></br><br/>
				  
				  
				  Institute Name:<br/> <input type="text" size="50" name="ins1" value="Fill in your institute name." onfocus="if (this.value== 'Fill in your institute name.') {this.value=''};" onblur="if(this.value=='') {alert('Please fill your Institute name.'); this.focus();}"
				  size="30"/>
				  
				  
				  </br> </br> 
				   <INPUT TYPE="image" SRC="images/submit.png"  WIDTH="67"  HEIGHT="26" BORDER="0" ALT="SUBMIT!"/> 
				  </form>
			</div>	
			</article>
			
			<article class="col2">
			    <br><br><br><br><br><br>
				<a href="login.php" ><h4>Login/Register</h4></a>
				<h4>Updates</h4>
				<div class="ul_works"> 
                      <Marquee direction="up" behaviour="scroll" scrollamount="3" onMouseOver="this.stop()" onMouseOut="this.start()">
                          <div align="left" color="white">registration has begun 
						  </div>
                      </Marquee> 
                    </div> 
				<h4>Sponsors</h4>
				<div style="margin-top:30px"> <table height="160" width="100"><tr><td>
                      <SCRIPT LANGUAGE="JavaScript">
<!--

/*
Script by FPMC at http://jsarchive.8m.com
Submitted to JavaScript Kit (http://javascriptkit.com)
For this and 400+ free scripts, visit http://javascriptkit.com
*/

//set image paths

src= ["images/s2.png", "images/s1.jpg",  "images/s4.jpg", "images/s3.jpg","images/s5.jpg","images/s6.jpg",  "images/s7.jpg"]


//set corresponding urls
url = ["#", "http://www.jamboreeindia.com/", "https://www.facebook.com/thetelegrapht2"]

//set duration for each image
duration = 2;

//Please do not edit below
ads=[]; ct=0;
function switchAd() {
var n=(ct+1)%src.length;
if (ads[n] && (ads[n].complete || ads[n].complete==null)) {
document["Ad_Image"].src = ads[ct=n].src;
}
ads[n=(ct+1)%src.length] = new Image;
ads[n].src = src[n];
setTimeout("switchAd()",duration*1000);
}
function doLink(){
location.href = url[ct];
} onload = function(){
if (document.images)
switchAd();
}
//-->
</SCRIPT>
               <A HREF="javascript:doLink();" onMouseOver="status=url[ct];return true;" onMouseOut="status=''">
              <IMG NAME="Ad_Image" SRC="images/s2.jpg" BORDER=0></A></td></tr></table>
                    </div>  
    		</article>
			</div>
	</section>
	
<!-- / content -->
<!-- footer -->
	<footer>
		<div class="wrapper">
			<!--<article class="col2">
				<h5>Why Us</h5>
				<ul class="list1">
					<li><a href="#">Sedut perspiciatis</a></li>
					<li><a href="#">Unde omnis iste</a></li>
					<li><a href="#">Natus error sit </a></li>
					<li><a href="#">Volupttem accus</a></li>
					<li><a href="#">Ntium doloremque </a></li>
				</ul>
			</article>-->
			<article class="col pad_left2">
				<h5>Links</h5>
				<ul class="list1">
					<li><a href="#">NSEC</a></li>
					<li><a href="#">Phoenix</a></li>
					<li><a href="#">Avenir</a></li>
					
				</ul>
			</article>
			<article class="col pad_left2">
				<h5>Follow Us</h5>
				<ul class="icons">
					<li><a href="#"><img src="images/icon1.jpg" alt="">Facebook</a></li>
					<li><a href="#"><img src="images/icon3.jpg" alt="">Twitter</a></li>
					<li><a href="#"><img src="images/icon5.jpg" alt="">RSS Feed</a></li>
				</ul>
			</article>
					</div>
		<p size = " px" style="color:white;" align="justify" >Copyright &copy; 2013 Phoenix. Designed and Developed by Indranil Maji, Abhinandan Bhattacharjee and Anish Choudhary</p>
		<!--<article class="privacy">-->
	</footer>
<!-- / footer -->
</div>
<script type="text/javascript">Cufon.now();</script>
<script type="text/javascript">
	$(window).load(function() {
	$('#nivo_slider').nivoSlider({
		effect:'fold', //Specify sets like: 'fold,fade,sliceDown, sliceDownLeft, sliceUp, sliceUpLeft, sliceUpDown, sliceUpDownLeft'
		slices:7,
		animSpeed:500,
		pauseTime:6000,
		startSlide:0, //Set starting Slide (0 index)
		directionNav:true, //Next & Prev
		directionNavHide:false, //Only show on hover
		controlNav:true, //1,2,3...
		controlNavThumbs:false, //Use thumbnails for Control Nav
		controlNavThumbsFromRel:false, //Use image rel for thumbs
		controlNavThumbsSearch: '.jpg', //Replace this with...
		controlNavThumbsReplace: '_thumb.jpg', //...this in thumb Image src
		keyboardNav:true, //Use left & right arrows
		pauseOnHover:true, //Stop animation while hovering
		manualAdvance:false, //Force manual transitions
		captionOpacity:1, //Universal caption opacity
		beforeChange:function(){},
		afterChange:function(){},
		slideshowEnd:function(){} //Triggers after all slides have been shown
	});
});


$(document).ready(function(){
	$("#d2").hide();
	$("#d3").hide();
});
function unhided2(){
$("#d2").show(1000);
$("#d1").hide(1000);
$("#d3").hide(1000);
}
function home(){
$("#d1").show(1000);
$("#d2").hide(1000);
$("#d3").hide(1000);
$("#d4").hide(1000);
$("#d5").hide(1000);
}
function unhided3(){
$("#d3").show(1000);
$("#d1").hide(1000);
$("#d2").hide(1000);
$("#d4").hide(1000);
$("#d5").hide(1000);

}

function unhided4(){
$("#d4").show(1000);
$("#d1").hide(1000);
$("#d2").hide(1000);
$("#d3").hide(1000);
$("#d5").hide(1000);

}

function unhided5(){
$("#d5").show(1000);
$("#d1").hide(1000);
$("#d2").hide(1000);
$("#d3").hide(1000);
$("#d4").hide(1000);
}
</script>
</body>
</html>