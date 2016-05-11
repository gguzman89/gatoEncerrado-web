package ar.edu.unq.gato_encerrado_web.servicio

import org.uqbar.xtrest.api.annotation.Controller
import org.uqbar.xtrest.json.JSONUtils
import org.uqbar.xtrest.api.XTRest
import org.uqbar.xtrest.api.annotation.Get

class Saludador{
	
	def saludar(){
		"hola mundo"
	}
}

@Controller
class MainController {
	
	extension JSONUtils = new JSONUtils
	
	@Get("/hola")
	def hello() {
		// EESTO NO SE HACEEEEE
		response.contentType = "text/html"
		ok(
			"<h2>" + new Saludador().saludar + "</h2>"
		)
	}
	
	@Get("/laberintos")
	def getLaberintos(String id){
		
	}
	
	def static void main(String[] args) {
		XTRest.start(MainController,9000)
	}
	
}