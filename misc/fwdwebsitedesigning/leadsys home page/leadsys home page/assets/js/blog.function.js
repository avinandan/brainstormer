jQuery(document).ready(function() {	
    metaDateHeight();
});

function metaDateHeight(){
    
    var metaDateColumn = $('.blog .post .column1');
    
    metaDateColumn.each(function() {
        var contentColumnHeight = $(this).next('.blog .post .column2').find('.content').height();
        var metaDateColumnHeight = $(this).find('.metaDate').height();
        if(metaDateColumnHeight<contentColumnHeight){
            $(this).css('height', contentColumnHeight);
        }                         
    });

}