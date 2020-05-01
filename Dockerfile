FROM openjdk:8-jdk-alpine
RUN addgroup -S medusa && adduser -S medusa -G medusa
USER medusa:medusa
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT [ "java", "-jar", "/app.jar" ]