FROM maven:3.5.3
EXPOSE 8080
COPY ./ ./
RUN mvn clean install -DskipTests
RUN cp target/spring-boot-data-jpa-example-0.0.1-SNAPSHOT.jar spring-boot-data-jpa-example-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","spring-boot-data-jpa-example-0.0.1-SNAPSHOT.jar"]
