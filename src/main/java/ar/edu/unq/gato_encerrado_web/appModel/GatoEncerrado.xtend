package ar.edu.unq.gato_encerrado_web.appModel

import java.util.List
import org.eclipse.xtend.lib.annotations.Accessors
import ar.edu.unq.gato_encerrado_dominio.Laberinto

@Accessors
class GatoEncerrado {
	
	List<Usuario> usuarios
	List<Laberinto> laberintos
//	//LaberintoMin lab1
//	//Boolean inicialHab
//	//Boolean finalHab
	Laberinto labDominio
	Usuario user1 = new Usuario(001, "gaston")
	
	new(){
		
		laberintos = # [
			labDominio = new Laberinto("Casa Embrujada")
		]
		
		usuarios = # [
			user1 // cargar los laberintos???
		]
		user1.resueltos = laberintos
	}
	
	static val INSTANCE = new GatoEncerrado
	
	
	def static getInstance() {
		INSTANCE
	}
	
	def buscarUsuario(String idUser) {
		var user = usuarios.findFirst[it.idUsuario.toString.contains(idUser)]
		user // parse int para transformar y buscar
	}
	
	def listarLaberintos(String idUsuario) {
		val user = buscarUsuario(idUsuario)
		user.resueltos
	}
	
	def datosLaberinto(List<Laberinto> laberintos, String idLaberinto) {
		// findFirst
		var lab = laberintos.findFirst[it.idLaberinto.toString.contains(idLaberinto)]
		lab
		// Todos los elementos del inventario del Jugador.
		// settear el new inventario
		
	}
	
}
