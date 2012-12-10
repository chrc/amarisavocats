import org.apache.commons.lang.StringUtils

class BootStrap {

    def init = { servletContext ->
    	// add apache commons lang StringUtils methods to the String class
		String.metaClass.mixin StringUtils
    }

    def destroy = {
    }
}
