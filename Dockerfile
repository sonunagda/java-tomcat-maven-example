FROM eclipse-temurin:17-jre
WORKDIR /app
# Copy the pre-built WAR and webapp-runner
COPY target/*.war /app/
COPY target/dependency/webapp-runner.jar /app/
EXPOSE 8080
ENTRYPOINT sh -c 'java -jar webapp-runner.jar *.war'
