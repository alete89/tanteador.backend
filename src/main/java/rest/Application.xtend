package rest
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
class Application {

    def static void main(String[] args) {
    	val bootstrap = new Bootstrap()
        SpringApplication.run(Application, args);
    }
}