$(document).ready(function(){
	$('#layerslider').layerSlider({
		skinsPath : 'assets/layerslider-2.0/layerslider/skins/',
		skin : '456theme',
        imgPreload : true,
	});
    $('.layerslider').find('.ls-nav-prev').append('<span>');
    $('.layerslider').find('.ls-nav-next').append('<span>');
	$('.layerslider').hover(function(){
	    $(this).find('.ls-nav-prev').animate({ opacity: 1 }, 200);
	    $(this).find('.ls-nav-next').animate({ opacity: 1 }, 200);
	},
	function()
	{
	    $(this).find('.ls-nav-prev').animate({ opacity: 0 }, 200);
	    $(this).find('.ls-nav-next').animate({ opacity: 0 }, 200);
	});
});