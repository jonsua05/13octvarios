package com.howtodoinjava.demo.spring.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.ComponentScans;
import org.springframework.context.annotation.Configuration;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.howtodoinjava.demo.spring.model.User1;
import com.howtodoinjava.demo.spring.model.Authorities;
import com.howtodoinjava.demo.spring.model.User;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;

@Configuration
@PropertySource("classpath:hibernate.cfg")
@EnableTransactionManagement
@ComponentScans(value = { @ComponentScan("com.howtodoinjava.demo.spring"), 
        @ComponentScan("com.howtodoinjava.demo.spring.service")})
public class HibernateConfig {

	@Autowired
	private ApplicationContext context;
        private Environment env;

	@Bean
	public LocalSessionFactoryBean getSessionFactory() {
		LocalSessionFactoryBean factoryBean = new LocalSessionFactoryBean();
		factoryBean.setConfigLocation(context.getResource("classpath:hibernate.cfg.xml"));
		/*factoryBean.setAnnotatedClasses(User1.class);
                factoryBean.setAnnotatedClasses(User.class, Authorities.class);*/
		return factoryBean;
	}

	@Bean
	public HibernateTransactionManager getTransactionManager() {
		HibernateTransactionManager transactionManager = new HibernateTransactionManager();
		transactionManager.setSessionFactory(getSessionFactory().getObject());
		return transactionManager;
	}

        
        
}
