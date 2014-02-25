jQuery(document).ready(function() {	
    fadeGrayscale();
});

function fadeGrayscale() {
    $('.grayscale').parent().mouseenter(function() {
    	$(this).find('img.bw_thumbnail').stop().animate({opacity:0}, 500);
    
    }).mouseleave(function(){
    	$(this).find('img.bw_thumbnail').stop().animate({opacity:1}, 500);
    })
}