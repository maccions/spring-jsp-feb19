package it.nextre.academy.springdemo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

@SpringBootApplication
//@ComponentScan("it.nextre.academy.springdemo") //superfluo, @SpringBootApplication lo fa già per noi
public class SpringDemoApplication {
	public static void main(String[] args) {
		SpringApplication.run(SpringDemoApplication.class, args);
	}

}
