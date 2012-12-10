package com.amaris 

import org.codehaus.groovy.grails.web.servlet.mvc.GrailsParameterMap

@grails.validation.Validateable
class ContactUserCommand {

  String username
  String useremail
  String usermessage

  static constraints = {
    username blank: false, minSize: 6
    useremail blank: false, email: true
  }
 
/*


  ContactUserCommand(GrailsParameterMap pMap) {
    if (pMap != null) {
      username = pMap.username
      useremail = pMap.useremail
      usermessage = pMap.usermessage
      println "In the constructor: ${this}"
      this
    }
  }
  */
 
  def String toString() {
    return "\nUser Name: " + username +
           "\nUser Email: " + useremail +
           "\nUser Message: " + usermessage
  }
}