package rest

import java.util.concurrent.atomic.AtomicLong;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestMapping
import domain.Greeting

@RestController
class GreetingController {

	static final String template = "Hello, %s!";
	final AtomicLong counter = new AtomicLong();

	@RequestMapping("/greeting")
	def Greeting greeting(@RequestParam(value="name", defaultValue="World") String name) {
		return new Greeting(counter.incrementAndGet(), String.format(template, name));
	}
}
