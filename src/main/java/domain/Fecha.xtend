package domain

import org.eclipse.xtend.lib.annotations.Accessors
import java.time.LocalDateTime

@Accessors
class Fecha {
	Equipo local
	Equipo visitante
	LocalDateTime fechaHoraInicio
	String lugar
	
}