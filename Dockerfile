FROM openjdk:8u151-jdk-alpine3.7
  
EXPOSE 8080
 
ENV APP_HOME /usr/src/app

COPY target/secretsanta-0.0.1-SNAPSHOT.jar $APP_HOME/app.jar

WORKDIR $APP_HOME

ENTRYPOINT exec java -jar app.jar 


Docker - Building a Web Server Docker File

FROM ubuntu 
RUN apt-get update 
RUN apt-get install –y apache2 
RUN apt-get install –y apache2-utils 
RUN apt-get clean 
EXPOSE 80 CMD [“apache2ctl”, “-D”, “FOREGROUND”]
