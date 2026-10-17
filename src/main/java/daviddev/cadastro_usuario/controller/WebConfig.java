package daviddev.cadastro_usuario.controller;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebConfig implements WebMvcConfigurer {

    @Override
    public void addViewControllers(ViewControllerRegistry registry) {
        // Redireciona a raiz "/" para a página padrão do Swagger UI
        registry.addRedirectViewController("/", "/swagger-ui/index.html");
    }
}
