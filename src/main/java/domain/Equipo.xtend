package domain

import org.eclipse.xtend.lib.annotations.Accessors
import repository.Entidad

@Accessors
class Equipo extends Entidad {
	Integer id
	String nombre
	String abreviatura
	String urlEscudo
	
	new(String nombre){
		this.nombre = nombre
	}

	new(String nombre, String abreviatura, String urlEscudo) {
		this.nombre = nombre
		this.abreviatura = abreviatura
		this.urlEscudo = urlEscudo
	}

}
