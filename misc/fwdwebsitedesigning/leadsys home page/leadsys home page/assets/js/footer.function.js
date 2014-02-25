jQuery(document).ready(function() {	
    footerClear();
});

function footerClear() {
    $('<div class="clear"></div>').insertAfter("#footer .four.columns:nth-child(4n)");
    $('<div class="clear"></div>').insertAfter("#footer .one-third.column:nth-child(3n)");
}
