# importing java from docker and using it.
# Start with a base image containing java runtime
FROM openjdk:17-jdk-slim

#Information around who maintains the image
MAINTAINER easybank.com

#Add the application's jar to the image
COPY target/loans-0.0.1-SNAPSHOT.jar loans-0.0.1-SNAPSHOT.jar

#Execute the application
ENTRYPOINT ["java","-jar","loans-0.0.1-SNAPSHOT.jar"]