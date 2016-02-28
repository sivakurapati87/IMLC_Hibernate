package com.intuiture.imlc.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

@Configuration
@EnableWebMvc
@ComponentScan(basePackages = "com.intuiture.imlc")
public class HelloWorldConfiguration extends WebMvcConfigurerAdapter{
	
	
//	@Bean
//	public VelocityConfigurer velocityConfig() {
//	    VelocityConfigurer velocityConfigurer = new VelocityConfigurer();
//	    velocityConfigurer.setResourceLoaderPath("/WEB-INF/velocity/");
//	    return velocityConfigurer;
//	}
//	
//	@Override
//	public void configureViewResolvers(ViewResolverRegistry registry) {
//		VelocityViewResolver viewResolver = new VelocityViewResolver();
//		
//		viewResolver.setViewClass(VelocityView.class);
//		viewResolver.setCache(true);
//		viewResolver.setPrefix("");
//		viewResolver.setSuffix(".jsp");
//		viewResolver.setExposeSpringMacroHelpers(true);
//
//		registry.viewResolver(viewResolver);
//	}
//
//	@Override
//	public void addResourceHandlers(ResourceHandlerRegistry registry) {
//		registry.addResourceHandler("/resources/**").addResourceLocations("/resources/");
//		registry.addResourceHandler("/webjars/**").addResourceLocations("classpath:/META-INF/resources/webjars/");
//	}

}