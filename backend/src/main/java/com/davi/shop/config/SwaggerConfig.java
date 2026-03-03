package com.davi.shop.config;

import io.swagger.v3.oas.models.OpenAPI;
import io.swagger.v3.oas.models.info.Info;
import io.swagger.v3.oas.models.info.Contact;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class SwaggerConfig {

    @Bean
    OpenAPI customOpenAPI() {
        return new OpenAPI()
                .info(new Info()
                        .title("E-Commerce Shop API")
                        .version("2.0.0")
                        .description("E-Commerce web application REST API")
                        .contact(new Contact()
                                .name("Davi")
                                .email("admin@admin.com")));
    }
}