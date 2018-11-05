FROM maven:3.5.3
COPY ./spring-boot-websocket-chat-demo /root/spring-boot-websocket-chat-demo
RUN cd /root/spring-boot-websocket-chat-demo && \
    mvn package
EXPOSE 8080
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/root/spring-boot-websocket-chat-demo/target/websocket-demo-0.0.1-SNAPSHOT.jar"]
