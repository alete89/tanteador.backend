package rest

import domain.Equipo
import domain.Fecha
import java.time.LocalDateTime
import repository.RepoLocator

class Bootstrap {
	Equipo boca = new Equipo("Boca")
	Equipo river = new Equipo("River")
	Fecha unaFecha
	
	new(){
		RepoLocator.repoFechas
		this.unaFecha => [
			local = river
			visitante = boca
			fechaHoraInicio = LocalDateTime.of(2019, 2, 15, 21, 30)
			lugar = "La playa"
			iniciado = true
			setsLocal = emptyMap
			setsVisitante = emptyMap
		]
		
	}
}