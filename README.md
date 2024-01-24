# Proyecto de Pruebas Automatizadas con Karate y Gradle

¡Bienvenido a mi proyecto de pruebas automatizadas en Swagger Petstore utilizando Karate y Gradle!

## Prerequisitos

Asegúrate de tener instalado lo siguiente en tu máquina local:

- [Java JDK 1.8](https://www.oracle.com/java/technologies/javase-downloads.html)
- [Gradle 7.6](https://gradle.org/install/)
- [IntelliJ IDEA 2023.1](https://www.jetbrains.com/idea/download/)
- Configura las variables de entorno para Java y Gradle.

## Comandos de Instalación

1. **Clona el repositorio:**

   ```bash
   git clone https://github.com/23456-Tony-Larrea/NTTDATA-API-QA-CHALLENGE)https://github.com/23456-Tony-Larrea/NTTDATA-API-QA-CHALLENGE
   cd NTTDATA-API-QA-CHALLENGE
 2. **Ejecuta el comando para instalar las dependencias:**

   ```bash
   gradle clean build
   ```
3. **Ejecuta el comando para ejecutar las pruebas:**

   ```bash
   insertar una nueva mascota , obtener una mascota por su id ,actualizar el nombre de una mascota y su estado a sold
   ./gradlew test --tests KarateRunner.testCRUPet
    obtener una mascota por su estado sold
    ./gradlew test --tests KarateRunner.testGetStatusPet
    ```

   
