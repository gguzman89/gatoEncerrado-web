package ar.edu.unq.gato_encerrado_web.appModel

import java.applet.Applet
import java.awt.Image
import java.io.File
import java.util.List
import org.eclipse.xtend.lib.annotations.Accessors

@Accessors
class Habitacion extends Applet{
	
	int id
	String nombreHab
	List<Accion> acciones
	String pathImage	// 3 opciones para image
	File file
	Image seo
	// informar habitacion inicial y final
	
	def loadImage(){
		seo = getImage(codeBase, "image.png")
	}
	
}
