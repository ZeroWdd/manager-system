package com.zero.system;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@MapperScan("com.zero.system.mapper")
@SpringBootApplication
public class ManagerSystemApplication {

    public static void main(String[] args) {
        SpringApplication.run(ManagerSystemApplication.class, args);
    }

}
