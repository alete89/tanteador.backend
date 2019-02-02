package rest

import domain.Equipo
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RestController

@RestController
class Controller {

	@RequestMapping("/equipo")
	def dameEquipo() { return new Equipo("River") }
}
