# syntax=docker/dockerfile:1

FROM openjdk:8
COPY ./cloud_storage-0.0.1-SNAPSHOT.jar /susforum/cloud_storage-0.0.1-SNAPSHOT.jar
WORKDIR /susforum

EXPOSE 8081
ENTRYPOINT ["java", "-jar", "cloud_storage-0.0.1-SNAPSHOT.jar"]