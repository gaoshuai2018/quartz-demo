package cn.gov.model;


import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("cn.gov.model.mapper")
public class ModelSchedulerApplication {

    public static void main(String[] args) {
        SpringApplication.run(ModelSchedulerApplication.class, args);
    }

}
