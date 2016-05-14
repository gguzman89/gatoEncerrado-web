package ar.edu.unq.gato_encerrado_web.appModel

import java.util.List
import org.eclipse.xtend.lib.annotations.Accessors

@Accessors
class Usuario {
	
	int idUsuario
	String nombreUsuario
	List<Laberinto> resueltos
	List<Laberinto> noResueltos
	
	new(int id, String name) {
		idUsuario = id
		nombreUsuario = name
		resueltos = null
		noResueltos = null 
	}
	
	def getTodos() {
		val todos = resueltos.addAll(noResueltos)
		todos
	}
	
}
