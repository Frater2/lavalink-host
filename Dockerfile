FROM eclipse-temurin:17-jdk-alpine

WORKDIR /opt/lavalink

# Descargamos Lavalink
ADD https://github.com/lavalink-devs/Lavalink/releases/download/4.0.8/Lavalink.jar Lavalink.jar

# Copiamos tu configuración (el archivo que ya tienes)
COPY application.yml application.yml

# Abrimos el puerto
EXPOSE 2333

# Encendemos el servidor
CMD ["java", "-jar", "Lavalink.jar"]