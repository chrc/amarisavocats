<!doctype html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Amaris Avocats Conditions financi&egrave;res</title>
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'conditions.css')}" type="text/css">		
	</head>
	<body>        
		<div id="page-body" role="main">
			<div id="container">
				<h2><g:message code="article.conditions.title.1" /></h2>
				<br />
				<ul>
					<g:each var="index" in="${1..5}">
						<li><g:message code="article.conditions.text.${index}" /></li>
					</g:each>
				</ul>
			</div>
		</div>
	</body>
</html>
