package ar.edu.unq.gato_encerrado_web.servicio

import java.util.List
import org.eclipse.xtend.lib.annotations.Accessors

@Accessors
class Habitacion {
	
	int id
	String nombreHab
	List<Accion> acciones
	String pathImage
	// informar habitacion inicial y final
	
}