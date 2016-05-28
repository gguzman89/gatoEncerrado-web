app.controller('TodosLosLaberintos', function($resource, cfpLoadingBar, Laberintos) {
	'use strict';
	
	var self = this;
	
	self.laberintos = [];
	self.user = {	name: "pepe"	};
	
	self.nombres = [];
	
	function obtenerNombres(laberintos) {
		laberintos.forEach(function(laberinto) {
			if(self.nombres.indexOf(laberinto.nombre) == -1) {
				self.nombres.push(laberinto.nombre)
			}
		});
	}
	
	this.actualizarLista = function() {
		Libros.query(function(data) {
			self.libros = data;
		});
	};
	
	this.actualizarLista();
	
	// ver Detalle: para verlo si hay un boton = Biblioteca
	this.laberintoSeleccionado = null;
	
	this.verDetalle = function(libro) {
		self.libroSeleccionado = libro;
		$("#verLaberintoModal").modal({});
		
	};
	
});