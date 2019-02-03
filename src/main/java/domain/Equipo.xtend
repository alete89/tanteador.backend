package domain

import org.eclipse.xtend.lib.annotations.Accessors
import repository.Entidad

@Accessors
class Equipo extends Entidad{
	String nombre
	
	new(String nombre) {
		this.nombre = nombre
	}
	
	
}