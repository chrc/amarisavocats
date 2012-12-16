<!doctype html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Grails"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'mobile.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'navigation.css')}" type="text/css">
		<g:layoutHead/>
        <r:layoutResources />
        <nav:resources override="true" />
	</head>
	
	<body>
		<div id="amarisLogo" role="banner">
			<div id="logo">
				<div id="logoGauche">A</div>
				<div id="logoDroite">maris vocats</div>
			</div>	
		</div>

		<div id="menu">
			<nav:render />
    	</div>

		<g:layoutBody />

		<div class="footer" role="contentinfo">
			<ul>
				<li><g:message code="mentions.copyright" /></li>
				<li><g:message code="article.contact.adresse" /></li>
				<li>
					<a href="mailto:<g:message code="article.contact.mel" />">
						<g:message code="article.contact.mel" />
					</a>
				</li>
				<li>
					<g:link controller="mentionsLegales"><g:message code="mentions.title" /></g:link>
					|
					<g:link controller="credits"><g:message code="credits.title" /></g:link>
				</li>
			</ul>
		</div>

		<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
		<g:javascript library="application"/>
        <r:layoutResources />
	</body>
</html>