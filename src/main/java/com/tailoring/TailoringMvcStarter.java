package com.tailoring;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@ComponentScan( "com.tailoring" )
@SpringBootApplication
public class TailoringMvcStarter {

	public static void main( String[] args ) {
		SpringApplication.run( TailoringMvcStarter.class, args );
	}
}