FROM openjdk:8-alpine

# Required for starting application up.
RUN apk update && apk add /bin/sh

RUN mkdir -p /opt/app
ENV PROJECT_HOME /opt/app

#It's copying the jar from jenkins under target directory
COPY target/my-app-1.0-SNAPSHOT.jar $PROJECT_HOME/junit

WORKDIR $PROJECT_HOME

CMD ["java" ,"-jar","./junit"]
