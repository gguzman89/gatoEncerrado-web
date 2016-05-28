package ar.edu.unq.gato_encerrado_web.appModel

import java.util.List
import org.eclipse.xtend.lib.annotations.Accessors
import ar.edu.unq.gato_encerrado_dominio.Laberinto

@Accessors
class Usuario {
	// jugador
	
	Integer idUsuario
	String nombreUsuario
	List<Laberinto> resueltos
	//List<Laberinto> noResueltos
	List<Item> inventario
	
	new(int id, String name) {
		idUsuario = id
		nombreUsuario = name
		resueltos = null
		//noResueltos = null
	}
	
	def void getTodos() {
		//resueltos.addAll(noResueltos) // revisar q sumen todos
		
	}
	
}
