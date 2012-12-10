<!doctype html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Amaris Avocats &Eacute;quipe</title>
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'jquery.ad-gallery.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'equipe.css')}" type="text/css">		
    <r:require modules = 'ad_gallery' />
	</head>

	<body> 
    <div id="backgroundGray"></div>       
    <div id="container">
      <div id="gallery" class="ad-gallery">
        <div class="ad-image-wrapper"></div>
        <!-- <div class="ad-controls"></div> -->
      	<div class="ad-nav">
          <div class="ad-thumbs">
            <ul class="ad-thumb-list">
              <g:each in="${listOfImages?}">
                <li>
                  <a href="${it.image}">
                    <img src="${it.thumb}" title="${it.title}" alt="${it.description}">
                  </a>
                </li>
              </g:each>
          	</ul>
        	</div>
      	</div>
    	</div>
    </div>
  </body>                      
</html>
