FROM openjdk:8-jdk-alpine

WORKDIR /opt/app

ARG JAR_FILE=target/find-links.jar
ARG JAR_LIB_FILE=target/lib/

COPY ${JAR_FILE} app.jar

ADD ${JAR_LIB_FILE} lib/

ENTRYPOINT ["java","-jar","app.jar"]
