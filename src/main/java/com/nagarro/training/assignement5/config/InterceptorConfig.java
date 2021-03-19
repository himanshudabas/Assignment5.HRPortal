package com.nagarro.training.assignement5.config;

import com.nagarro.training.assignement5.interceptors.LoginInterceptor;
import com.nagarro.training.assignement5.interceptors.PortalAuthInterceptor;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class InterceptorConfig implements WebMvcConfigurer {
	
    @Override
    public void addInterceptors(InterceptorRegistry registry) {

        registry.addInterceptor(new LoginInterceptor())
                .addPathPatterns("/login", "/");
        registry.addInterceptor(new PortalAuthInterceptor())
                .addPathPatterns("/portal", "/edit/**", "/logout");
        System.out.println("[InterceptorConfig] -> addInterceptors");
    }
}
