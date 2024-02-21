FROM openjdk:8-jdk-alpine

WORKDIR /app

COPY .mvn/ .mvn
COPY mvnw pom.xml ./
RUN ./mvnw dependency:resolve

COPY src ./src

CMD ["./mvnw", "spring-boot:run"]

ADD target/JenkinsProject-0.0.1-SNAPSHOT.jar app.jar

EXPOSE 2222
