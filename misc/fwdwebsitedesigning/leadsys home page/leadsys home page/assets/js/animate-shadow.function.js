jQuery(document).ready(function() {	
    animateShadow();
});

function animateShadow(){
    
    $('.about .element').mouseenter(function() {
        $(this).stop(true,true).animate({backgroundColor:'#fcfcfc', boxShadow: '0 0 10px rgba(0, 0, 0, 0.1)'}, 200);
        $(this).find('.social').stop(true,true).animate({backgroundColor:'#fafafa'}, 200);
    
    }).mouseleave(function(){
        $(this).stop(true,true).animate({backgroundColor:'#fafafa', boxShadow: '0 0 0'}, 200);
        $(this).find('.social').stop(true,true).animate({backgroundColor:'#f5f5f5'}, 200)
    });
    
    $('.portfolio .element').mouseenter(function() {
        $(this).stop(true,true).animate({backgroundColor:'#fcfcfc', boxShadow: '0 0 15px rgba(0, 0, 0, 0.1)'}, 200);
        $(this).find('h4').addClass('hover');
    
    }).mouseleave(function(){
        $(this).stop(true,true).animate({backgroundColor:'#fafafa', boxShadow: '0 0 0'}, 200);
        $(this).find('h4').removeClass('hover');
    });

}