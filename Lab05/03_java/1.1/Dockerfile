

FROM openjdk:8-jdk-alpine

EXPOSE 8080

ADD ./Rest02-1.0-SNAPSHOT.jar app.jar

#ENTRYPOINT ["java","-jar","app.jar"]
ENTRYPOINT ["java","-jar","-Dserver.port=8888","app.jar"]
