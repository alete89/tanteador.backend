package rest

import domain.Equipo
import domain.Fecha
import java.time.LocalDateTime
import repository.RepoLocator
import domain.Set

class Bootstrap {
	Equipo boca = new Equipo("Boca")
	Equipo river = new Equipo("River")
	Fecha unaFecha

	new() {
		RepoLocator.repoEquipos.create(boca)
		RepoLocator.repoEquipos.create(river)
		river.urlEscudo = "../../../assets/logos/0002.png"
		boca.urlEscudo = "../../../assets/logos/0001.png"

		this.unaFecha = new Fecha() => [
			local = river
			visitante = boca
			fechaHoraInicio = LocalDateTime.of(2019, 2, 15, 21, 30)
			lugar = "La playa"
			iniciado = true
			sets = #[
				new Set(25, 12),
				new Set(11, 25),
				new Set(28, 26),
				new Set(25, 27),
				new Set(11, 25)
			]

		]
		RepoLocator.repoFechas.create(unaFecha)

	}
}
