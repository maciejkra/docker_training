FROM gradle:4.10.2-jdk8
COPY build.gradle ./
ADD src ./src
RUN gradle build
EXPOSE 8080/tcp
ENTRYPOINT [ "java", "-jar", "./build/libs/gs-spring-boot-docker-0.1.0.jar"]