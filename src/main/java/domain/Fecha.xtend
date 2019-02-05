package domain

import java.time.LocalDateTime
import java.util.List
import org.eclipse.xtend.lib.annotations.Accessors
import repository.Entidad

@Accessors
class Fecha extends Entidad {
	Equipo local
	Equipo visitante
	LocalDateTime fechaHoraInicio
	String lugar
	Boolean iniciado
	// Map<Integer,Integer> setsLocal
	// Map<Integer,Integer> setsVisitante
	List<Set> sets = #[
		new Set(),
		new Set(),
		new Set(),
		new Set(),
		new Set()
	]
}
