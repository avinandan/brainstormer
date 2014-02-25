jQuery(document).ready(function() {	
    calloutButton();
});

function calloutButton() {
    
    var moduleHeight = $('#callout .four').prev('.twelve').height();
    var bnHeight = $('#callout .four .button').outerHeight();
    var Height = moduleHeight-bnHeight;
    
    $("#callout .four").css('paddingTop', Height/2);

}