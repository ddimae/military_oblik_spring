package ntukhpi.semit.militaryoblikspring;

import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

/**
 * Created base on example https://www.javaguides.net/2021/05/spring-boot-crud-tutorial.html
 */
public class ServletInitializer extends SpringBootServletInitializer {

	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
		return application.sources(MilitaryOblikSpringApplication.class);
	}

}
