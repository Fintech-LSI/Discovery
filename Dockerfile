# Use a lightweight base image
FROM openjdk:17-jdk-slim

# Set the working directory
WORKDIR /app

# Copy the built JAR file
COPY target/*.jar app.jar

# Expose the service port (e.g., Eureka default port 8761, or your configured port)
EXPOSE 8761

# Start the application
ENTRYPOINT ["java", "-jar", "app.jar"]
