app.controller('TodosLosLaberintosCtrl', function() {
	var self = this;
	
	self.laberintos = [{nombre:"Un Laberinto"}, {nombre:"asd"}];
	self.user = {	name: "pepe"	};
	self.nombres = [];
	
	function obtenerNombres(laberintos) {
		laberintos.forEach(function(laberinto) {
			if(self.nombres.indexOf(laberinto.nombre) == -1) {
				self.nombres.push(laberinto.nombre)
			}
		});
	}
	
	// ver Detalle: para verlo si hay un boton = Biblioteca
	this.laberintoSeleccionado = null;
	
	this.verDetalle = function(libro) {
		self.libroSeleccionado = libro;
		$("#verLaberintoModal").modal({});
		
	};
	
});