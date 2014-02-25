jQuery(document).ready(function() {	
    showbiz();
    showbizResponsive();
    sitemap();
    
});
function showbiz() {
    $('.showbiz .item').mouseenter(function() {
        $(this).find('h6').addClass('hover');
    
    }).mouseleave(function(){
        $(this).find('h6').removeClass('hover');
    });
}
function showbizResponsive() {
    $('.showbiz-responsive .column').mouseenter(function() {
        $(this).find('h6').addClass('hover');
    
    }).mouseleave(function(){
        $(this).find('h6').removeClass('hover');
    });
}
function sitemap() {
    $('.sitemap-isotope .element').mouseenter(function() {
        $(this).find('h4').addClass('hover');
    
    }).mouseleave(function(){
        $(this).find('h4').removeClass('hover');
    });
}