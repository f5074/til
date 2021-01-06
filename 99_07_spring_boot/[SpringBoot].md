## Spring profiles Change
Github등 open된 곳에서 소스를 관리할 경우 DB 정보와 같은 중요정보는 Parameter를 사용해서 실행하도록 하면, 정보 보호가 가능함 
* 적용방법(bootRun 시 VM 세팅에 추가)
-Dspring.profiles.active=prod -Dspring.datasource.username=test  -Dspring.datasource.password=test -Dvariables.ip=127.0.0.1 -Dvariables.sid=XE


1. build.gradle

implementation 'org.springframework.boot:spring-boot-configuration-processor'

bootRun {
    systemProperties System.properties
    main = "com.tistory.f5074.spring_boot.Application"
}

2. Application.java
@SpringBootApplication
@MapperScan(value = {"com.tistory.f5074.spring_boot"})
@EnableConfigurationProperties

3. application.yml
spring:
  profiles:
    active: test
  datasource:
    driver-class-name: net.sf.log4jdbc.sql.jdbcapi.DriverSpy
    url: jdbc:log4jdbc:oracle:thin:@${variables.ip}:1521/${variables.sid}
    username: test
    password: test

variables:
  ip: localhost
  sid: xe

## JSP 세팅

1. build.gradle
implementation 'javax.servlet:jstl'
implementation 'org.apache.tomcat.embed:tomcat-embed-jasper'

2. application.yml
spring:
  mvc:
    static-path-pattern: /static/**
    view:
      prefix: /WEB-INF/views/
      suffix: .jsp

3. src/main/webapp/WEB-INF/views/index.jsp
해당경로에 설정해줘야 jsp 페이지가 적용됨



## jar 배치 실행 시 JSP가 열리지 않는 부분
jar를 war로 변경해서 배포할 경우 가능

1. build.gradle
apply plugin: 'war'

bootWar{
    archiveBaseName = 'spring_boot'
    archiveFileName =  'spring_boot.war'
    archiveVersion = '0.0.0'
} 

2. build.gradle을 변경후 gradle sync 시 ServletInitializer 생성됨

3. 기존 Application.java 에 메인 메서드를 ServletInitializer로 변경

@SpringBootApplication
@MapperScan(value = {"com.tistory.f5074.spring_boot"})
@EnableConfigurationProperties
public class ServletInitializer extends SpringBootServletInitializer {

    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
        return application.sources(Application.class);
    }


    public static void main(String[] args){
        SpringApplication.run(ServletInitializer.class,args);
    }

}

4. application.yml 리소스용 파일위치

spring: 
  resources:
    static-locations: classpath:/static/
    add-mappings: true


## 서버 실행용 batch

java -jar ../build/libs/spring_boot.war --spring.profiles.active=prod --spring.datasource.username=test  --spring.datasource.password=test --variables.ip=localhost --variables.sid=XE