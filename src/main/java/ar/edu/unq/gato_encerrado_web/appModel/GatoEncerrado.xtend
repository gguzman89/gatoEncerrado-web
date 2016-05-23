package ar.edu.unq.gato_encerrado_web.appModel

import java.util.List
import org.eclipse.xtend.lib.annotations.Accessors

@Accessors
class GatoEncerrado {
	
	List<Usuario> usuarios
	List<Laberinto> laberintos
	Laberinto lab1
	Boolean inicialHab
	Boolean finalHab
	
	new(){
		
		laberintos = # [
			lab1 = new Laberinto("jardin Embrujado", 01, "pathImage")
		]
		usuarios = # [
			new Usuario(001, "gaston") // cargarle los laberintos
		]
	}
	
	static val INSTANCE = new GatoEncerrado
	
	
	def static getInstance() {
		INSTANCE
	}
	
	def buscarUsuario(String idUser) {
		var user = usuarios.findFirst[it.idUsuario.toString.contains(idUser)]
		user.resueltos // faltan No resueltos
		// deberia solo devolver el usuario
	}
	
	def listarLaberintos(Usuario usuario) {
		usuario.getTodos() // resultos y no
	}
	
	def datosLaberinto(List<Laberinto> laberintos, String idLaberinto) {
		// findFirst
		var lab = laberintos.findFirst[it.idLaberinto.toString.contains(idLaberinto)]
		lab
		// Todos los elementos del inventario del Jugador.
		// settear el new inventario
		
	}
	
}
