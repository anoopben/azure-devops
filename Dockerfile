FROM openjdk:11-jre-slim

# Set working directory
WORKDIR /app

# Debug: List files in /target before COPY
#RUN ls -la /target

# Copy the WAR file into the container
COPY target/my-app-1.0-SNAPSHOT.war /app/my-app.war

# Expose the port the app runs on
EXPOSE 8080

# Command to run the app
CMD ["java", "-jar", "/app/my-app.war"]
