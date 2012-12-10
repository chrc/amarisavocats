<!doctype html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Amaris Avocats Contact</title>
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'contact.css')}" type="text/css">		
	</head>
	<body>        
		<div id="page-body" role="main">
			<h1><g:message code="article.contact.title" /></h1>			
			<div id="container">
				<div id="contact"> 
					<p><g:message code="article.contact.text2" /></p>
					<br />
					<g:form action="sendMessage">
						<ul>						
							<li>
								<label for="username">Dénomination et / ou nom</label>
								<g:textField name="username" value="${contactUser?.username}" />
							</li>
							<li>
								<label for="useremail">Email</label>
								<g:textField name="useremail" value="${contactUser?.useremail}" />
							</li>
							<li>
								<label for="usermessage">Votre question</label>
								<textarea name="usermessage" id="message" cols="60" rows="5" />${contactUser?.usermessage}</textarea>
							</li>

							<li>
								<img src="${createLink(controller: 'simpleCaptcha', action: 'captcha')}"/>
								<label for="captcha" class="captcha">Inscrivez les lettres ci-contre</label>
								<g:textField name="captcha"/>
							</li>
							

							<li>	
								<g:submitButton name="sendMessage" class="submit" value="Envoyer votre question" />
							</li>
						</ul>
					</g:form>
				</div>	

				<div id="plan">
					<div id="transports">
						<ul>
							<g:message code="article.contact.transport.metro" />			
							<g:message code="article.contact.transport.metro.detail" />
							<g:message code="article.contact.transport.rer" />
							<g:message code="article.contact.transport.rer.detail" />
							<g:message code="article.contact.transport.bus" />
							<g:message code="article.contact.transport.bus.details" />
						</ul>
					</div>

					<h2><g:message code="article.contact.name" /></h2>
					<p><g:message code="article.contact.adresse" /></p>
					<p>
						<img src="${resource(dir: 'images', file: 'contact/icon-tel.png')}" />
						<g:message code="article.contact.tel" />
					</p>
					<p>
						<img src="${resource(dir: 'images', file: 'contact/icon-fax.png')}" />
						<g:message code="article.contact.fax" />
					</p>
					<p>
						<img src="${resource(dir: 'images', file: 'contact/icon-email.png')}" />
						<a style="color:#004e84" href="mailto:${message(code: 'article.contact.mel')}">
							<g:message code="article.contact.mel" />
						</a>
					</p>

					<iframe frameborder="0" scrolling="no" marginheight="0" marginwidth="0" 
							src="${message(code: 'article.contact.iframe')}"></iframe>
				</div>

				

			</div>

		</div>

	</body>
</html>
