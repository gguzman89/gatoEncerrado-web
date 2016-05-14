package ar.edu.unq.gato_encerrado_web.appModel

import java.util.List
import org.eclipse.xtend.lib.annotations.Accessors

@Accessors
class GatoEncerrado {
	
	List<Usuario> usuarios
	List<Laberinto> laberintos
	
	new(){
		val jardinEmbrujado = new Laberinto("jardin Embrujado", 01, "pathImage")
	}
	
	static val INSTANCE = new GatoEncerrado
	
	def static getInstance() {
		INSTANCE
	}
	
	def buscarUsuario(String idUser) {
		var user = usuarios.findFirst[it.idUsuario.toString.contains(idUser)]
		user.resueltos
		
	}
	
	def listarLaberintos(Usuario usuario) {
		usuario.getTodos()
	}
	
}
