$(function() {
	var galleries = $('.ad-gallery').adGallery({
		height: 450, 
		slideshow: {
    		enable: false
		}
	});
    galleries[0].settings.effect = "fade";

	$('ul.ad-thumb-list').find('li').each(function(n) {
		var image = $(this).find('a').find('img');
		var title = image.attr('title');
		var titleLess = title.substring(0, title.indexOf('<br'));
		image.attr('title', titleLess);
    });
    
});
