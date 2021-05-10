FROM openjdk:15-alpine

LABEL org.opencontainers.image.authors="Pixel GmbH <info@pixel.de>"

ADD "build/libs/Monitoring_Cats-1.0-SNAPSHOT.jar" /app/MonitoringCats.jar

ENTRYPOINT ["java", "-jar", "/app/MonitoringCats.jar"]
