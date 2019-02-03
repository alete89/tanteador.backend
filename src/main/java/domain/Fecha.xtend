package domain

import org.eclipse.xtend.lib.annotations.Accessors
import java.time.LocalDateTime
import java.util.Map
import repository.Entidad

@Accessors
class Fecha extends Entidad {
	Equipo local
	Equipo visitante
	LocalDateTime fechaHoraInicio
	String lugar
	Boolean iniciado
	Map<Integer,Integer> setsLocal
	Map<Integer,Integer> setsVisitante
}