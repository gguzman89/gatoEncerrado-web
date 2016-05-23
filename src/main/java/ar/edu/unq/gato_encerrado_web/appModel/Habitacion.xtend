package ar.edu.unq.gato_encerrado_web.appModel

import java.util.List
import org.eclipse.xtend.lib.annotations.Accessors

@Accessors
class Habitacion {
	
	int idHabitacion
	String nombreHabitacion
	List<Accion> acciones
	String pathImage
	
	new(int id, String name){ // prox pathImage
		idHabitacion = id
		nombreHabitacion = name
		acciones = null
		
	}
	
}
