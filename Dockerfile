# Use an official OpenJDK 21 runtime as a base image
FROM eclipse-temurin:21-jdk

# Set the working directory inside the container
WORKDIR /app

# Copy the built JAR file into the container
COPY target/*.jar app.jar

# Expose the application port (default for Spring Boot is 8080)
EXPOSE 8081

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
