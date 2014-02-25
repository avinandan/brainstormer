jQuery(document).ready(function() {	
    blogPostIframe();
    scaleWithGrid();
});


function blogPostIframe() {

	var $iframe = $(".blog .post iframe"),
	    $fluid = $(".blog .post");

	$iframe.each(function() {
		$(this)
			.data('aspectRatio', this.height / this.width)
			.removeAttr('height')
			.removeAttr('width');
	});

	$(window).resize(function() {
		var newWidth = $fluid.width()-6;
		$iframe.each(function() {
			var $el = $(this);
			$el
				.width(newWidth)
				.height(newWidth * $el.data('aspectRatio'));
		});
	}).resize();

}
function scaleWithGrid() {

	var $iframe = $("iframe.scale-with-grid"),
	    $fluid = $("iframe.scale-with-grid").parent();

	$iframe.each(function() {
		$(this)
			.data('aspectRatio', this.height / this.width)
			.removeAttr('height')
			.removeAttr('width');
	});

	$(window).resize(function() {
		var newWidth = $fluid.width();
		$iframe.each(function() {
			var $el = $(this);
			$el
				.width(newWidth)
				.height(newWidth * $el.data('aspectRatio'));
		});
	}).resize();

}