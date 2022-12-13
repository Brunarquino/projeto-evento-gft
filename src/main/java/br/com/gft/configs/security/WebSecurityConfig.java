package br.com.gft.configs.security;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.web.bind.annotation.RequestMethod;

@Configuration
public class WebSecurityConfig{
	
	@Bean
	public SecurityFilterChain configure(HttpSecurity http) throws Exception{
		http
			.httpBasic()
			.and()
			.authorizeHttpRequests()
			.antMatchers("/", "/css/**", "/images/**", "/js/**", "/usuario/**").permitAll()
			.antMatchers("/evento/", "/evento/ranking").permitAll()
			.anyRequest().authenticated()
			.and()
			.formLogin()
				.loginPage("/usuario")
			.and()
				.logout()
					.logoutSuccessUrl("/usuario")
			.and()
			.csrf().disable();
		return http.build();
	}
	
	@Bean
	public PasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
	}
	
}
