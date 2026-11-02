# Compila y empaqueta SVC-Canomar para la nube (Railway u otro servidor con Docker)
FROM maven:3.9-eclipse-temurin-21 AS build
WORKDIR /app
COPY pom.xml .
RUN mvn -B -q dependency:go-offline
COPY src ./src
RUN mvn -B -q -DskipTests package && cp target/*.jar app.jar

FROM eclipse-temurin:21-jre
WORKDIR /app
ENV TZ=America/Lima
# Memoria limitada para gastar menos en la nube
ENV JAVA_OPTS="-Xms64m -Xmx320m -XX:+UseSerialGC -XX:TieredStopAtLevel=1 -Duser.timezone=America/Lima"
COPY --from=build /app/app.jar app.jar
EXPOSE 8080
CMD ["sh", "-c", "java $JAVA_OPTS -jar app.jar"]
