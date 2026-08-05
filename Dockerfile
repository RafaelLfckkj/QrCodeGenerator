FROM maven:3.9.6-ecplise-temurin-21 AS build
WORKDIR /app
COPY src ./src
RUN mvn clean package -DskipTests

FROM ecplise-temurin:21-jre
WORKDIR /app
COPY --from=build /app/target/*.jar app.jar

ARG AWS_ACCESS_KEY_ID
ARG AWS_SECRET_ACCESS_KEY

ENV AWS_REGION=us-east-1
ENV AWS_S3_BUCKET=qrcode-storage

ENTRYPOINT ["java", "-jar", "app.jar"]

