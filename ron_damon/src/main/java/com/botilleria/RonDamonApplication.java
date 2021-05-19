package com.botilleria;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages = "com.botilleria")
public class RonDamonApplication {

	public static void main(String[] args) {
		SpringApplication.run(RonDamonApplication.class, args);
	}

}
