package rest
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
class Application {

    def static void main(String[] args) {
    	new Bootstrap()
        SpringApplication.run(Application, args);
    }
}