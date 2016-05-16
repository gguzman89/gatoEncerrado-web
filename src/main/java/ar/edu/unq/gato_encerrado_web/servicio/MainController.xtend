package ar.edu.unq.gato_encerrado_web.servicio

import ar.edu.unq.gato_encerrado_web.appModel.GatoEncerrado
import org.uqbar.xtrest.api.XTRest
import org.uqbar.xtrest.api.annotation.Controller
import org.uqbar.xtrest.api.annotation.Get
import org.uqbar.xtrest.json.JSONUtils

@Controller
class MainController {
	
	extension JSONUtils = new JSONUtils
	
	// id del Usuario
	// Cada Laberinto debe tener nombre, id del laberinto, path de la imagen.
	// donde hago la validacion???
	@Get('/laberintos/:idUsuario')
	def todosLosLaberintos(){
		
		response.contentType = "application/json" // ???
		//val iID = Integer.valueOf(idUsuario)
		ok(GatoEncerrado.getInstance.buscarUsuario(idUsuario).toJson) // verificar de retornar todos
	}
	
	/* JSON con los datos del Laberinto: idUsuario y idLaberinto
	 * Todos los elementos del inventario del Jugador???
	 */
	@Get('/iniciar')	
	def iniciarLaberinto(String idUsuario, String idLaberinto){
		response.contentType = "application/json"
		
		val labs = GatoEncerrado.instance.buscarUsuario(idUsuario) // instance != ???
		
		ok(GatoEncerrado.getInstance.datosLaberinto(labs, idLaberinto).toJson)
	}
	
	
	/*
	 * Resultado de ejecutar la acción, de donde encuentro idHabitacion?
	 */
	@Get('/realizarAccion')
	def resultadoDeAccion(String idHabitacion, String idAccion){
		
		ok
	}
	
	def static void main(String[] args) {
		XTRest.start(MainController,8900)
	}
	
}