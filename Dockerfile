# Usamos una imagen oficial de Java
FROM eclipse-temurin:25-jdk

# Definimos el directorio de trabajo
WORKDIR /app

# Copiamos el JAR al contenedor
COPY build/HelloWorld.jar .

# Comando por defecto: ejecutar el JAR
CMD ["java", "-jar", "HelloWorld.jar"]