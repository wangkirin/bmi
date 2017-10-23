FROM openjdk:8-jre-alpine

EXPOSE 8080
EXPOSE 8888

RUN mkdir -p /maven/bmi/

COPY ./*-exec.jar  /maven/bmi/

ENTRYPOINT java -jar /maven/bmi/$JAR_NAME-exec.jar
