package ar.edu.unq.gato_encerrado_web.appModel

import org.eclipse.xtend.lib.annotations.Accessors
import java.util.List

@Accessors
class Laberinto {
	
	String nombre
	int idLaberinto
	String pathImage
	//List<Habitacion> habitaciones
	
	new(String name, int id, String image) {
		nombre = name
		idLaberinto = id
		pathImage = image
	}
	
}
