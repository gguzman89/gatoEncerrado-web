package ar.edu.unq.gato_encerrado_web.appModel

import org.eclipse.xtend.lib.annotations.Accessors
import java.util.List

@Accessors
class Laberinto {
	
	String nombre
	int idLaberinto
	String pathImage
	List<Habitacion> habitaciones
	
	new(String name, int id, String image) {
		nombre = name
		idLaberinto = id
		pathImage = image
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
