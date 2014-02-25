<?php

// Hiding notices:
error_reporting(E_ALL^E_NOTICE);

?>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<title>Brainstormer 2013|Gallery</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="description" content="The inter school/college quiz-mania organized by PHOENIX official tech-club of Netaji Subhash Engineering College,Kolkata" /> 
	<meta name="keywords" content="brainstormer, brainstormer 2013, phoenix, nsec ,nsecollege, quiz mania ,quiz, mania, The inter school/college quiz-mania,  netaji subhash engineering college, quiz in kolkata, gk test , brainstormer gallery, phoenix gallery, nsec gallery, " /> 
    <meta property="og:title" content="Gallery Brainstormer 2013"/> 
	<meta property="og:type" content="website"/> 
	<meta property="og:url" content="http://brainstormer.co.in/gallery/"/> 
    <meta property="og:image" content="http://brainstormer.co.in/images/logo1.png"/> 
    <meta property="og:site_name" content="ShareThis Inc."/> 
    <meta property="og:description" content="The inter school/college quiz-mania organized by PHOENIX official tech-club of Netaji Subhash Engineering College,Kolkata"/>
<link rel="shortcut icon" href="img/logo1.png" />
<link rel="stylesheet" type="text/css" href="demo.css" />
<link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.7.2/themes/ui-darkness/jquery-ui.css" type="text/css" media="all" />
<link rel="stylesheet" type="text/css" href="fancybox/jquery.fancybox-1.2.6.css" />


<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js"></script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.7.2/jquery-ui.min.js"></script>
<script type="text/javascript" src="fancybox/jquery.fancybox-1.2.6.pack.js"></script>
<script type="text/javascript" src="script.js"></script>

</head>

<body>

<div id="main">
	<p id="orig"></p>
	<h1><a href="http://www.brainstormer.co.in">Brainstormer 2013</a> Photo Gallery </h1>
    <h2>Drag the pics around to share them</h2>

	<hr />

	<div id="gallery">
    
<?php

/* Configuration Start */

$thumb_directory = 'img/thumbs';
$orig_directory = 'img/original';

$stage_width=600;	// How big is the area the images are scattered on
$stage_height=400;

/* Configuration end */

$allowed_types=array('jpg','jpeg','gif','png');
$file_parts=array();
$ext='';
$title='';
$i=0;

/* Opening the thumbnail directory and looping through all the thumbs: */

$dir_handle = @opendir($thumb_directory) or die("There is an error with your image directory!");

$i=1;
while ($file = readdir($dir_handle)) 
{
	/* Skipping the system files: */
	if($file=='.' || $file == '..') continue;
	
	$file_parts = explode('.',$file);
	$ext = strtolower(array_pop($file_parts));

	/* Using the file name (withouth the extension) as a image title: */
	$title = implode('.',$file_parts);
	$title = htmlspecialchars($title);

	/* If the file extension is allowed: */	
	if(in_array($ext,$allowed_types))
	{
		/* Generating random values for the position and rotation: */
		$left=rand(0,$stage_width);
		$top=rand(0,400);
		$rot = rand(-40,40);
		
		if($top>$stage_height-130 && $left > $stage_width-230)
		{
			/* Prevent the images from hiding the drop box */
			$top-=120+130;
			$left-=230;
		}
		
		/* Outputting each image: */
		
		echo '
		<div id="pic-'.($i++).'" class="pic" style="top:'.$top.'px;left:'.$left.'px;background:url('.$thumb_directory.'/'.$file.') no-repeat 50% 50%; -moz-transform:rotate('.$rot.'deg); -webkit-transform:rotate('.$rot.'deg);">
		<a class="fancybox" rel="fncbx" href="'.$orig_directory.'/'.$file.'" target="_blank">'.$title.'</a>
		</div>';
	}
}

/* Closing the directory */
closedir($dir_handle);

?>
    <div class="drop-box">
    </div>
    
	</div>
    <!-- AddThis Button BEGIN  AKS-->
						<div class="addthis_toolbox addthis_default_style addthis_32x32_style">
						<a class="addthis_button_preferred_1"></a>
						<a class="addthis_button_preferred_2"></a>
						<a class="addthis_button_preferred_3"></a>
						<a class="addthis_button_preferred_4"></a>
						<a class="addthis_counter addthis_bubble_style"></a>
						</div>
						<script type="text/javascript">var addthis_config = {"data_track_addressbar":true};</script>
						<script type="text/javascript" src="http://s7.addthis.com/js/250/addthis_widget.js#pubid=ra-50100c3f02be2115"></script>
						<!-- AddThis Button END -->
	<div class="clear"></div>
   
  	<div class="container tutorial-info">
   Designed by Indranil Maji, Anish Choudhary and Abhinandan Bhattacharjee<br/>
Snapped by Amit Chandra	</div>
</div>

<!-- This is later converted to the modal window with the url of the image: -->

<div id="modal" title="Share this picture">
	<form action="facebook.com">
	<fieldset>
		<label for="url">URL of the image</label>
		<input type="text" name="url" id="url" class="text ui-widget-content ui-corner-all" onfocus="this.select()" />
	</fieldset>
	</form>

</div>

</body>
</html>
