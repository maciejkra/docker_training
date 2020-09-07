FROM gradle:4.10.2-jdk8 as builder 
COPY build.gradle ./
ADD src ./src
RUN gradle build