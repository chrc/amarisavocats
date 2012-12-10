package amarisavocats

import groovy.json.JsonSlurper
import org.codehaus.groovy.grails.commons.ApplicationHolder
import org.apache.commons.lang.StringUtils
import ImageJson

class EquipeController {

	static navigation = [
        order     : 300,
		group     : 'tabs', 
		title     : 'Notre équipe',
		action    : 'index'
	]

	static jsonSlurper = new JsonSlurper();

	List<ImageJson> listOfImages = new ArrayList<ImageJson>()

    Comparator comparatorById = new Comparator() {
        int compare(a, b) { a.id <=> b.id }
    }

    def index() { 
		String dir = ApplicationHolder.getApplication().getMainContext().getResource("/").getFile().getAbsolutePath()
    	def reader = new BufferedReader(new FileReader(dir + "/db/equipe.json"))

    	def parsedData = jsonSlurper.parse(reader)
		parsedData.each { item ->
			def title = getTitle(item)
    		def image = 
                new ImageJson(item.id, getImagePath(item.image), getImagePath(item.thumb), title, item.description, item.email)
    		listOfImages.add(image)
		}
        listOfImages.sort(comparatorById)
    }

    def getImagePath(pFilename) {
    	g.resource(dir: "images", file: pFilename)
    }

    def getTitle(pData) {
    	String result = pData?.title?.toString()
    	if (StringUtils.isBlank(result)) {
    		result = pData?.firstname?.toString() + " " + pData?.name?.toString() +
                "<br />" + pData?.function?.toString() + "<br /><br />"
    	}
    	result
    }

}
