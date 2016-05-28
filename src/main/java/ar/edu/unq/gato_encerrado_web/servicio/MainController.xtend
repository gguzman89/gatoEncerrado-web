package ar.edu.unq.gato_encerrado_web.servicio

import ar.edu.unq.gato_encerrado_web.appModel.GatoEncerrado
import org.uqbar.xtrest.api.XTRest
import org.uqbar.xtrest.api.annotation.Controller
import org.uqbar.xtrest.api.annotation.Get
import org.uqbar.xtrest.json.JSONUtils
import ar.edu.unq.gato_encerrado_web.appModel.LaberintoMin

@Controller
class MainController {
	
	extension JSONUtils = new JSONUtils
	
	// donde hago la validacion???
	@Get('/laberintos/:idUsuario')
	def todosLosLaberintos(){
		
		response.contentType = "application/json"
		ok(GatoEncerrado.getInstance.listarLaberintos(idUsuario).map[new LaberintoMin(it)].toJson) // verificar de retornar todos
	}
	
	/* JSON con los datos del Laberinto: idUsuario y idLaberinto
	 * Todos los elementos del inventario del Jugador???
	 */
	@Get('/iniciar')	
	def iniciarLaberinto(String idUsuario, String idLaberinto){
		response.contentType = "application/json"
		
		val labs = GatoEncerrado.instance.buscarUsuario(idUsuario)
		
		ok//(GatoEncerrado.getInstance.datosLaberinto(labs, idLaberinto).toJson)
	}
	
	
	/*
	 * Resultado de ejecutar la acción, de donde encuentro idHabitacion?
	 */
	@Get('/realizarAccion')
	def resultadoDeAccion(String idHabitacion, String idAccion){
		
		response.contentType = "application/json"
		
		
		ok()
	}
	
	def static void main(String[] args) {
		XTRest.start(MainController,8900)
	}
	
}