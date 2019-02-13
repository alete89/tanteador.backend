package domain

import org.eclipse.xtend.lib.annotations.Accessors

@Accessors
class Usuario {
	Integer id
	String username
	String passwordHash
	Equipo equipo

	new() {
	}
}
