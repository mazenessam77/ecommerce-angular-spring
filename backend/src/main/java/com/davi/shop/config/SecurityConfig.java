package com.davi.shop.config;

import static org.springframework.security.config.Customizer.withDefaults;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.configuration.AuthenticationConfiguration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;

import com.davi.shop.config.security.JwtAuthenticationEntryPoint;
import com.davi.shop.config.security.JwtAuthenticationFilter;

@Configuration
@EnableWebSecurity
public class SecurityConfig {

    private JwtAuthenticationEntryPoint authenticationEntryPoint;

    private JwtAuthenticationFilter authenticationFilter;

    public SecurityConfig(
	    JwtAuthenticationEntryPoint authenticationEntryPoint,
	    JwtAuthenticationFilter authenticationFilter) {
	this.authenticationEntryPoint = authenticationEntryPoint;
	this.authenticationFilter = authenticationFilter;
    }

    @Bean
    static PasswordEncoder passwordEncoder() {
	return new BCryptPasswordEncoder();
    }

    @Bean
    AuthenticationManager authenticationManager(
	    AuthenticationConfiguration configuration)
	    throws Exception {
	return configuration.getAuthenticationManager();
    }

    @Bean
    SecurityFilterChain securityFilterChain(HttpSecurity http)
	    throws Exception {

	http
	    .csrf(csrf -> csrf.disable())
	    .cors(withDefaults())
	    .authorizeHttpRequests(auth -> auth
		.requestMatchers("/h2/**").permitAll()
		.requestMatchers("/api/orders/**").authenticated()
		.requestMatchers("/api/v1/states/**").permitAll()
		.requestMatchers(HttpMethod.GET, "/api/v1/products/**").permitAll()
		.requestMatchers(HttpMethod.POST, "/api/v1/products/**").hasRole("ADMIN")
		.requestMatchers(HttpMethod.PUT, "/api/v1/products/**").hasRole("ADMIN")
		.requestMatchers(HttpMethod.DELETE, "/api/v1/products/**").hasRole("ADMIN")
		.requestMatchers("/api/v1/countries/**").permitAll()
		.requestMatchers(HttpMethod.GET, "/api/v1/product-categories/**").permitAll()
		.requestMatchers("/v3/api-docs/**",
			"/configuration/ui", "/swagger-resources/**",
			"/configuration/security", "/webjars/**",
			"/swagger-ui/**").permitAll()
		.requestMatchers("/api/v1/checkout/**").permitAll()
		.requestMatchers("/api/v1/auth/**").permitAll()
		.anyRequest().authenticated()
	    )
	    .httpBasic(withDefaults())
	    .exceptionHandling(exception -> exception
		.authenticationEntryPoint(authenticationEntryPoint))
	    .sessionManagement(session -> session
		.sessionCreationPolicy(SessionCreationPolicy.STATELESS));

	http.addFilterBefore(authenticationFilter,
		UsernamePasswordAuthenticationFilter.class);

	return http.build();
    }
}