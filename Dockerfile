# Use uma imagem base do Java
FROM openjdk:21-jdk-slim

# Defina o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copie o arquivo JAR do seu projeto para o contêiner
COPY /target/bookCommand-0.0.1-SNAPSHOT.jar app.jar

# Comando para executar o aplicativo
CMD ["java", "-jar", "app.jar"]