FROM openjdk:21-jdk
WORKDIR /app
COPY target/*.war app.war
ENTRYPOINT ["java", "-war", "app.war"]
