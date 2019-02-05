package domain

import org.eclipse.xtend.lib.annotations.Accessors

@Accessors
class Set {
	Integer puntosLocal = 0
	Integer puntosVisitante = 0

	new(Integer puntosLocal, Integer puntosVisitante) {
		this.puntosLocal = puntosLocal
		this.puntosVisitante = puntosVisitante
	}
	
	new(){}

}
