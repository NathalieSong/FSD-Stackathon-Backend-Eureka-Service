FROM openjdk:8-jdk-alpine

WORKDIR /app

COPY target/eureka-service-0.0.1-SNAPSHOT.jar ./

EXPOSE 9000

ENTRYPOINT ["java","-jar", "/app/eureka-service-0.0.1-SNAPSHOT.jar"]