FROM openjdk:8-jre-alpine

EXPOSE 8081
EXPOSE 8888

RUN mkdir -p /maven/bmi/

COPY ./*-exec.jar  /maven/bmi/

ENTRYPOINT java $JAVA_OPTS -jar /maven/bmi/$JAR_NAME-exec.jar
