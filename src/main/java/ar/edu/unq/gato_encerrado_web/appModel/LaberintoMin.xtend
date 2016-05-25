package ar.edu.unq.gato_encerrado_web.appModel

import org.eclipse.xtend.lib.annotations.Accessors
import java.util.List
import ar.edu.unq.gato_encerrado_dominio.HabitacionMinificada
import ar.edu.unq.gato_encerrado_dominio.Laberinto

@Accessors
class LaberintoMin {
	// laberinto minificado
	
	String nombre
	int idLaberinto
	String pathImage
	List<HabitacionMinificada> habitaciones
	Boolean resuelto
	
	new(Laberinto lab) {
		nombre = lab.nombreLaberinto
		idLaberinto = lab.idLaberinto
		pathImage = lab.path
		resuelto = lab.resuelto
		habitaciones = null
	}
	
	def traerHabitacion(String idHab) {
		
		val habitacion = habitaciones.findFirst[it.idHabitacion.toString.contains(idHab)]
		habitacion
	}
	
	def realizarAccion(Habitacion hab, String idAccion){
		// acciones posibles
	}
}
