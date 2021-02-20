FROM adoptopenjdk:11-jre-hotspot
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} cloud-config.jar
ENTRYPOINT ["java", "-jar", "cloud-config.jar"]