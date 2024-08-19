# syntax=docker/dockerfile:1

FROM openjdk:8
COPY ./video_service-0.0.1-SNAPSHOT.jar /susforum/video_service-0.0.1-SNAPSHOT.jar
WORKDIR /susforum

EXPOSE 8020
ENTRYPOINT ["java", "-jar", "video_service-0.0.1-SNAPSHOT.jar"]