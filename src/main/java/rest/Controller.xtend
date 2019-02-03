package rest

import domain.Equipo
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RestController
import repository.RepoLocator

@RestController
class Controller {

	@RequestMapping("/equipo")
	def dameEquipo() { return new Equipo("Calamuchita") }
	
	@RequestMapping("/unaFecha")
	def unaFecha(){
		return RepoLocator.repoFechas.pool.get(0)
	}
}
