$(function() {
	var galleries = $('.ad-gallery').adGallery({
		height: 450, 
		slideshow: {
    		enable: false
		},
		// Can you navigate by clicking on the left/right on the image?
  		display_next_and_prev: false,
  		// Are you allowed to scroll the thumb list?
  		display_back_and_forward: false,
  		// If 0, it jumps the width of the container
  		scroll_jump: 1
	});
    galleries[0].settings.effect = "fade";

	$('ul.ad-thumb-list').find('li').each(function(n) {
		var image = $(this).find('a').find('img');
		var title = image.attr('title');
		var titleLess = title.substring(0, title.indexOf('<br'));
		image.attr('title', titleLess);
    });
    
});
