FROM maven:3.9.3 AS builder
WORKDIR /build
COPY . .
RUN mvn package -Dmaven.test.skip=true

FROM openjdk:20
COPY --from=builder /build/target/*.jar demo-1.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "demo-1.jar"]
