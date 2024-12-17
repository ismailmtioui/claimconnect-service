# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file into the container
COPY target/claimconnect-service-0.0.1-SNAPSHOT.jar /app/claimconnect-service.jar

# Expose the application port
EXPOSE 9096

# Run the JAR file
ENTRYPOINT ["java", "-jar", "claimconnect-service.jar"]
