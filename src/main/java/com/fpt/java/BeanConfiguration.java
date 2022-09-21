package com.fpt.java;

import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.view.UrlBasedViewResolver;
import org.springframework.web.servlet.view.tiles3.TilesConfigurer;
import org.springframework.web.servlet.view.tiles3.TilesView;

import com.fpt.java.model.Contact;
import com.fpt.java.model.FooterInfo;
import com.fpt.java.reponsitory.ContactRepository;
import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;

@Configuration
public class BeanConfiguration {

	@Bean("congty1")
	public FooterInfo getFooterInfo1() {
		FooterInfo footerInfo = new FooterInfo();
		footerInfo.setCompanyName("Công ty 1");
		return footerInfo;
	}

	@Bean("congty2")
	@Primary
	public FooterInfo getFooterInfo2() {
		FooterInfo footerInfo = new FooterInfo();
		footerInfo.setCompanyName("Công ty 2");
		return footerInfo;
	}

	@Autowired
	ContactRepository contactRepository;

	@Bean
	public Contact getContact() {
		List<Contact> c = contactRepository.findAll();
		if (!c.isEmpty())
			return c.get(0);
		return null;
	}

//	@Bean("viewResolver")
//	public ViewResolver getViewResolver() {
//		UrlBasedViewResolver viewResolver = new UrlBasedViewResolver();
//		viewResolver.setViewClass(TilesView.class);
//		return viewResolver;
//	}
//
//	@Bean("tilesConfigurer")
//	public TilesConfigurer getTilesConfigurer() {
//		TilesConfigurer tilesConfigurer = new TilesConfigurer();
//		tilesConfigurer.setDefinitions("/WEB-INF/tiles.xml");
//		return tilesConfigurer;
//	}
}
