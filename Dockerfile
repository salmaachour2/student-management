# Utilise l'image Java Alpine
FROM eclipse-temurin:17-jre-alpine

# Crée un dossier de travail dans le conteneur
WORKDIR /app

# Copie le fichier JAR généré par Maven
COPY target/student-management-0.0.1-SNAPSHOT.jar app.jar

# Expose le port sur lequel Spring Boot tourne
EXPOSE 8080

# Commande pour démarrer l'application
ENTRYPOINT ["java","-jar","app.jar"]
