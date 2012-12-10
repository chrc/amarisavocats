package amarisavocats

import com.amaris.ContactUserCommand
import org.apache.commons.validator.EmailValidator
import org.apache.commons.lang.StringUtils

class ContactController {

	static navigation = [  
		order 	: 100,
		group	: 'tabs', 
		title	: 'Contact',
		action	: 'index'
	]

	def mailService
	def simpleCaptchaService

    def messageSource

    EmailValidator validator = EmailValidator.getInstance()

    def index() { 
		//[contactUser : session.contactUser]
    }

    def sendMessage = {ContactUserCommand pCmd ->
        if (request.method == "POST") {
            pCmd.validate()
    		if (!pCmd.validate()) {
    	        for (fieldErrors in pCmd.errors) {
                    for (error in fieldErrors.allErrors) {
                        println messageSource.getMessage(error, null)
                    }
                }
			}

            def validName = pCmd.username.isNotBlank()
            def validEmail = validator.isValid(pCmd.useremail)
            def validMessage = pCmd.usermessage.isNotBlank()
            println "validName: ${validName}  validEmail: ${validEmail}  validMessage: ${validMessage}"


 			boolean captchaValid = simpleCaptchaService.validateCaptcha(params.captcha)
			if (captchaValid && validName && validEmail && validMessage) {
//				def contact = new ContactUser(params)
//				session.contactUser = contact

                mailService.sendMail {
                    from  pCmd.useremail
                    to "chrcharles67@gmail.com"
                    subject "Formulaire contact du site"
                    text pCmd.usermessage
                }
				redirect(controller:"contact")
			} else {
				flash.message = "Lettres invalides !"
				redirect(action:"index")
			}
    	}
    }

}
