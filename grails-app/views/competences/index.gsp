<!doctype html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Amaris Avocats Comp&eacute;tences</title>
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'competences.css')}" type="text/css">		
	</head>
	<body>        
		<div id="page-body" role="main">
			<div id="container">
				<h2><g:message code="article.competences.title.1" /></h2>
				<h3><g:message code="article.competences.title.2" /></h3>
				<br />

				<h4><g:message code="article.competences.a" /></h4>
				<ul>
					<img src="${resource(dir: 'images', file: 'photos/facade.png')}" class="image-droite" />
					<g:each var="index" in="${1..9}">
						<li><g:message code="article.competences.a.${index}" /></li>
					</g:each>
				</ul>
				<h4><g:message code="article.competences.b" /></h4>
				<ul>
					<g:each var="index" in="${1..18}">
						<li><g:message code="article.competences.b.${index}" /></li>
					</g:each>
				</ul>
				<img src="${resource(dir: 'images', file: 'photos/moquette.png')}" class="image-droite2" />
				<h4><g:message code="article.competences.c" /></h4>

				<ul>
					<g:each var="index" in="${1..3}">
						<li><g:message code="article.competences.c.${index}" /></li>
					</g:each>
				</ul>
				<h4><g:message code="article.competences.d" /></h4>
				<ul>
					<g:each var="index" in="${1..5}">
						<li><g:message code="article.competences.d.${index}" /></li>
					</g:each>
				</ul>

		
			</div>
		</div>
	</body>
</html>
