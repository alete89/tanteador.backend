package domain

import org.eclipse.xtend.lib.annotations.Accessors

@Accessors
class Equipo {
	String nombre
	
	new(String nombre) {
		this.nombre = nombre
	}
	
	
}