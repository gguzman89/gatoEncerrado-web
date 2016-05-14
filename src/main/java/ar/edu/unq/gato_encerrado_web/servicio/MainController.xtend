package ar.edu.unq.gato_encerrado_web.servicio

import org.uqbar.xtrest.api.annotation.Controller
import org.uqbar.xtrest.json.JSONUtils
import org.uqbar.xtrest.api.XTRest
import org.uqbar.xtrest.api.annotation.Get
import ar.edu.unq.gato_encerrado_web.appModel.Usuario
import ar.edu.unq.gato_encerrado_web.appModel.GatoEncerrado

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
	
	// sino quiero tener todo en rojo poner el OK al final y despues codear
	// id del Usuario
	// Cada Laberinto debe tener nombre, id del laberinto, path de la imagen.
	// donde hago la validacion???
	@Get('/laberintos/:idUsuario')
	def todosLosLaberintos(){
		
		response.contentType = "application/json" // ???
		//val iID = Integer.valueOf(idUsuario)
		ok(GatoEncerrado.getInstance.buscarUsuario(idUsuario).toJson) // verificar de retornar todos
	}
	
	@Get('/iniciar')	
	def iniciarLaberintos(String idUsuario, String idLaberinto){
		
		ok
	}
	
	def static void main(String[] args) {
		XTRest.start(MainController,8900)
	}
	
}