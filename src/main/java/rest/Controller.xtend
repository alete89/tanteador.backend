package rest

import domain.Equipo
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RestController
import domain.Fecha
import java.time.LocalDateTime

@RestController
class Controller {

	@RequestMapping("/equipo")
	def dameEquipo() { return new Equipo("Calamuchita") }
	
	@RequestMapping("/unaFecha")
	def unaFecha(){
		val river = new Equipo("River")
		val boca = new Equipo("Boca")
		val estaFecha = new Fecha()
		estaFecha.local = river
		estaFecha.visitante = boca
		estaFecha.lugar = "La Bombonera"
		estaFecha.fechaHoraInicio = LocalDateTime.of(2019, 2, 15, 21, 30)
		return estaFecha
	}
}
