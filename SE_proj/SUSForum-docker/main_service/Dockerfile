# syntax=docker/dockerfile:1

FROM openjdk:8
COPY ./main_service-0.0.1-SNAPSHOT.jar /susforum/main_service-0.0.1-SNAPSHOT.jar
WORKDIR /susforum

EXPOSE 8010
ENTRYPOINT ["java", "-jar", "main_service-0.0.1-SNAPSHOT.jar"]