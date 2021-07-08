FROM maven:3.8-adoptopenjdk-8-openj9 AS MAVEN_TOOL_CHAIN
COPY pom.xml /tmp/
RUN mvn -B dependency:go-offline -f /tmp/pom.xml -s /usr/share/maven/ref/settings-docker.xml
COPY src /tmp/src/
COPY lib /tmp/lib/
WORKDIR /tmp/
RUN mvn -B -s /usr/share/maven/ref/settings-docker.xml package

FROM openjdk:8u292-slim-buster

EXPOSE 8080:8080

RUN mkdir /app
COPY --from=MAVEN_TOOL_CHAIN /tmp/target/*.jar /app/bacit-web.jar

ENTRYPOINT ["java","-jar","bacit-web"]