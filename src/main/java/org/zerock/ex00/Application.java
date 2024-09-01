package org.zerock.ex00;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("org.zerock.ex00.mappers")
public class Application {

    public static void main(String[] args) {
        SpringApplication.run(Application.class, args);
    }
}
