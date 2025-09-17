# Use Java 17 slim base image
FROM openjdk:17-jdk-slim

# Set working directory inside container
WORKDIR /app

# Copy the built JAR file from Gradle build
COPY build/libs/*.jar app.jar

# Run the app when container starts
ENTRYPOINT ["java", "-jar", "app.jar"]