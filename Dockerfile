
FROM registry.access.redhat.com/ubi8/openjdk-11:1.11
EXPOSE 8089
ADD target/*.jar TRAIN.jar
ENTRYPOINT ["java","-jar","TRAIN.jar"]
