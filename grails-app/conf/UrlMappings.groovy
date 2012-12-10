class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

		//"/"(view:"/index")
		//"/"(view:"/underconstruction")
		"/"(view:"/accueil/index")
		"500"(view:'/error')
	}
}
