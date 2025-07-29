# Use Tomcat with JDK 21 as base image
FROM tomcat:9.0-jdk21

# Set working directory
WORKDIR /usr/local/tomcat/webapps

# Remove default webapps to avoid conflicts
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR file from target to Tomcat webapps
COPY target/*.war ROOT.war

# Expose Tomcat's default port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
