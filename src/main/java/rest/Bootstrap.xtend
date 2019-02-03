package rest

import domain.Equipo
import domain.Fecha
import java.time.LocalDateTime
import repository.RepoLocator
import java.util.Map
import java.util.HashMap

class Bootstrap {
	Equipo boca = new Equipo("Boca")
	Equipo river = new Equipo("River")
	Fecha unaFecha
	
	new(){
		RepoLocator.repoEquipos.create(boca)
		RepoLocator.repoEquipos.create(river)
		
		this.unaFecha = new Fecha() => [
			local = river
			visitante = boca
			fechaHoraInicio = LocalDateTime.of(2019, 2, 15, 21, 30)
			lugar = "La playa"
			iniciado = true
			setsLocal = new HashMap<Integer, Integer>()
			setsLocal.put(1,25)
			setsLocal.put(2,26)
			setsLocal.put(3,20)
			setsLocal.put(4,26)
			setsLocal.put(5,28)
			setsVisitante = new HashMap<Integer, Integer>()
			setsVisitante.put(1,22)
			setsVisitante.put(2,24)
			setsVisitante.put(3,25)
			setsVisitante.put(4,28)
			setsVisitante.put(5,26)
		]
		RepoLocator.repoFechas.create(unaFecha)
		
	}
}