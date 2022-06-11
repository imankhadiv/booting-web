FROM maven:3.8.5-jdk-11-slim as BUILDER
ARG VERSION=0.0.1-SNAPSHOT
WORKDIR /build/
COPY pom.xml /build/
COPY src /build/src/

RUN mvn clean install
COPY target/booting-web-${VERSION}.jar target/application.jar



#FROM openjdk:16.0.0-jre-slim
FROM openjdk:11
WORKDIR /app/

COPY --from=BUILDER /build/target/application.jar /app/
CMD java -jar /app/application.jar

