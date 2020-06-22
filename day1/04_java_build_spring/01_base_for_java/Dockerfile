FROM gradle:4.10.2-jdk8 as builder 
COPY build.gradle ./
ADD src ./src
RUN gradle build
RUN pwd

FROM openjdk:11-jre-slim
COPY --from=builder /home/gradle//build/libs/gs-spring-boot-docker-0.1.0.jar ./
EXPOSE 8080/tcp
ENTRYPOINT [ "java", "-jar", "./gs-spring-boot-docker-0.1.0.jar"]