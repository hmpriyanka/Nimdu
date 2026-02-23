# Stage 1: Build
FROM maven:3.8.5-openjdk-17 AS build
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn clean package -DskipTests

# Stage 2: Run
FROM eclipse-temurin:17-jdk-alpine
WORKDIR /app
COPY --from=build /app/target/*.jar nimdu-app-0.0.1-SNAPSHOT.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "nimdu-app-0.0.1-SNAPSHOT.jar"]

EXPOSE 8080

#docker build -t nimdu-app:latest .
#docker images
#docker run -p 8080:8080 nimdu-app:latest

#docker build -t java-application .
#docker images
#docker run -p 8080:8080 -d java-application
#docker ps
#docker tag java-application:latest hmpriyanka05/java-application
#docker login
#docker push hmpriyanka05/java-application:latest