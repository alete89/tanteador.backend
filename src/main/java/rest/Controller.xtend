package rest

import domain.Equipo
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RestController
import repository.RepoLocator
import org.springframework.web.bind.annotation.PostMapping
import org.springframework.web.bind.annotation.RequestBody
import org.springframework.web.bind.annotation.CrossOrigin
import domain.Usuario

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

	@RequestMapping("/getEquipos")
	def getEquipos() {
		return db.listEquipos
	}

	@PostMapping("/nuevoEquipo")
	def nuevoEquipo(@RequestBody Equipo body) {
		db.addEquipo(body)
	}
	
	@PostMapping("/nuevoUsuario")
	def nuevoUsuario(@RequestBody Usuario body) {
		db.addUsuario(body)
	}
}
