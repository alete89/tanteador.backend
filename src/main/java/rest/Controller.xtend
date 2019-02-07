package rest

import domain.Equipo
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RestController
import repository.RepoLocator
import org.springframework.web.bind.annotation.PostMapping
import org.springframework.web.bind.annotation.RequestBody
import org.springframework.web.bind.annotation.CrossOrigin

@CrossOrigin
@RestController
class Controller {
	Database db = new Database()

	@RequestMapping("/equipo")
	def dameEquipo() { return new Equipo("Calamuchita") }

	@RequestMapping("/unaFecha")
	def unaFecha() {
		return RepoLocator.repoFechas.pool.get(0)
	}

	@PostMapping("/nuevoEquipo")
	def nuevoEquipo(@RequestBody Equipo body) {
		db.addEquipo(body)
	}
}
