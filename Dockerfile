FROM openjdk:8-jdk-alpine
LABEL maintainer="johan.steffens@absa.africa"
VOLUME /tmp
EXPOSE 8080
ARG JAR_FILE=target/makola-config-server-0.0.1.jar
ADD ${JAR_FILE} makola-config-server.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/makola-config-server.jar"]