# # Stage 1: Build the application using Maven
# FROM maven:3.9.5-eclipse-temurin-21-alpine AS build

# # Set the working directory within the container to /app
# WORKDIR /app

# # Copy all files from the current directory (.) to the container's working directory (/app)
# COPY . .

# # Run the Maven clean install command with the option to skip tests
# RUN mvn clean install -DskipTests

# RUN ls -l && ls -l target

# # Stage 2: Create a lightweight container with only the necessary artifacts
# FROM eclipse-temurin:21-jre-alpine AS deployer

# # Set the working directory within the container to /app
# WORKDIR /app

# # Copy the artifacts (JAR file) from the previous stage into current stage
# COPY --from=build /app/target/*.jar product.jar
# # COPY --from=build /app/target/product-0.0.1-SNAPSHOT.jar product.jar        # in case if upper line throws an error.


# # Specify the command to run when the container starts - run the Java application using the JAR file
# CMD ["java", "-jar", "product.jar"]


