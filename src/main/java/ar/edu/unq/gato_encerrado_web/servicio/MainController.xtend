package ar.edu.unq.gato_encerrado_web.servicio

import ar.edu.unq.gato_encerrado_dominio.Jugadores
import ar.edu.unq.gato_encerrado_dominio.appModel.GatoEncerradoAppModel
import ar.edu.unq.gato_encerrado_web.appModel.GatoEncerrado
import java.util.NoSuchElementException
import org.uqbar.xtrest.api.XTRest
import org.uqbar.xtrest.api.annotation.Controller
import org.uqbar.xtrest.api.annotation.Get
import org.uqbar.xtrest.json.JSONUtils

@Controller
class MainController {
	
	extension JSONUtils = new JSONUtils
	
	@Get('/laberintos/:idUsuario')
	def todosLosLaberintos(){
		
//		val laberintos = GatoEncerradoAppModel.instance.laberintos.clone
//		response.contentType = "application/json"
//		//ok(GatoEncerrado.getInstance.listarLaberintos(idUsuario).map[new LaberintoMin(it)].toJson) // verificar de retornar todos
//		ok(laberintos.toJson)
		val iID = Integer.valueOf(idUsuario)
		try{
			response.contentType = "application/json"
			val usuario = Jugadores.instance.encontrarUsuario(iID)
			GatoEncerradoAppModel.instance.juego.registrarUsuario(usuario)
			//ok(usuario.juego.laberintos.map[new LaberintoMin(it)].toJson)
			ok(GatoEncerradoAppModel.instance.laberintos.clone.toJson)
		} catch (NoSuchElementException nse) {
			notFound('''No se encontró el usuario con nombre de usuario = «iID»''')
		}
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