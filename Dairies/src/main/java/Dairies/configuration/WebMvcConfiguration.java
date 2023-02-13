package Dairies.configuration;

//import org.big.ex031.interceptor.LoggerInterceptor;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebMvcConfiguration implements WebMvcConfigurer{
	
//	@Override
//	public void addInterceptors(InterceptorRegistry registry){
//		registry.addInterceptor(new LoggerInterceptor());
//	}
	@Bean
	public CommonsMultipartResolver multipartResolver(){
		CommonsMultipartResolver commonsMultipartResolver = new CommonsMultipartResolver();
		commonsMultipartResolver.setDefaultEncoding("UTF-8");
		commonsMultipartResolver.setMaxUploadSizePerFile(5 * 1024 * 1024); //5 * 1024 * 1024 (5mb)
		return commonsMultipartResolver;
	}
//    @Bean
//    public HiddenHttpMethodFilter httpMethodFilter() {
//        HiddenHttpMethodFilter hiddenHttpMethodFilter = new HiddenHttpMethodFilter();
//        return hiddenHttpMethodFilter;
//    }
}
