package ar.edu.unq.gato_encerrado_web.servicio

import java.util.List
import org.eclipse.xtend.lib.annotations.Accessors

@Accessors
class GatoEncerrado {
	
	List<Usuario> usuarios
	List<Laberinto> laberintos
}