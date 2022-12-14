//package com.fpt.java;
//
//import com.zaxxer.hikari.*;
//
//import org.hibernate.SessionFactory;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.beans.factory.annotation.Value;
//import org.springframework.context.annotation.*;
//import org.springframework.jdbc.datasource.DriverManagerDataSource;
//import org.springframework.orm.hibernate4.HibernateTransactionManager;
//import org.springframework.orm.hibernate4.LocalSessionFactoryBuilder;
//import org.springframework.transaction.annotation.EnableTransactionManagement;
//
//import java.util.Properties;
//
//import javax.sql.DataSource;
//
//
//@Configuration
//@EnableTransactionManagement
//public class DatabaseConfig {
//
//	@Value("${db.driver}")
//	private String DB_DRIVER;
//
//	@Value("${db.password}")
//	private String DB_PASSWORD;
//
//	@Value("${db.url}")
//	private String DB_URL;
//
//	@Value("${db.username}")
//	private String DB_USERNAME;
//
//	@Value("${hibernate.dialect}")
//	private String HIBERNATE_DIALECT;
//
//	@Value("${hibernate.show_sql}")
//	private String HIBERNATE_SHOW_SQL;
//
//	@Value("${hibernate.hbm2ddl.auto}")
//	private String HIBERNATE_HBM2DDL_AUTO;
//	
////	@Value("${hibernate.current_session_context_class}")
////	private String HIBERNATE_CURRENT_SESSION_CONTEXT_CLASS;
//
//	@Value("${entitymanager.packagesToScan}")
//	private String ENTITYMANAGER_PACKAGES_TO_SCAN;
//
//	@Bean(name = "dataSource")
//	public DataSource dataSource() {
//		DriverManagerDataSource dataSource = new DriverManagerDataSource();
//		dataSource.setDriverClassName(DB_DRIVER);
//		dataSource.setUrl(DB_URL);
//		dataSource.setUsername(DB_USERNAME);
//		dataSource.setPassword(DB_PASSWORD);
//		return dataSource;
//	}
//
//	@Autowired
//	@Bean(name = "sessionFactory")
//	public SessionFactory sessionFactory(DataSource dataSource) {
//		LocalSessionFactoryBuiler sessionBuilder = new LocalSessionFactoryBuilder(dataSource);
//		sessionBuilder.scanPackages("com.shoppingCart.app.model");
//		sessionBuilder.addProperties(hibernateProperties());
//		return sessionBuilder.buildSessionFactory();
//	}
//
//	@Autowired
//	@Bean
//	public HibernateTransactionManager transactionManager(SessionFactory sessionFactory) {
//		HibernateTransactionManager transactionManager = new HibernateTransactionManager();
//		transactionManager.setSessionFactory(sessionFactory);
//		return transactionManager;
//	}
//	
//	private Properties hibernateProperties() {
//		Properties hibernateProperties = new Properties();
//		hibernateProperties.put("hibernate.dialect", HIBERNATE_DIALECT);
//		hibernateProperties.put("hibernate.show_sql", HIBERNATE_SHOW_SQL);
//		hibernateProperties.put("hibernate.hbm2ddl.auto", HIBERNATE_HBM2DDL_AUTO);
////		hibernateProperties.put("hibernate.current_session_context_class", HIBERNATE_CURRENT_SESSION_CONTEXT_CLASS);
//		return hibernateProperties;
//	}
//}
//
//
//
////@Configuration
////public class DatabaseConfig {
////
////  @Value("${spring.datasource.url}")
////  private String dbUrl;
////
////  @Bean
////  public DataSource dataSource() {
////      HikariConfig config = new HikariConfig();
////      config.setJdbcUrl(dbUrl);
////      return new HikariDataSource(config);
////  }
////}
