package rest;

import domain.Equipo;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@SuppressWarnings("all")
public class Controller {
  @RequestMapping("/equipo")
  public Equipo dameEquipo() {
    return new Equipo("Calamuchita");
  }
}
