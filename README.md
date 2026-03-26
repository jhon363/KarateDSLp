# ServeRest Karate DSL QA Automation

Este proyecto contiene una suite de pruebas automatizadas para la API de Usuarios de ServeRest (https://serverest.dev/) utilizando Karate DSL.

## Estructura del Proyecto

- `src/test/java/features/`: Archivos feature de Karate para cada endpoint CRUD de usuarios.
- `src/test/java/utils/`: Utilidades para generación de datos de prueba.
- `pom.xml`: Configuración de Maven y dependencias.

## Ejecución de Pruebas

1. Instala Java 8+ y Maven.
2. Clona este repositorio.
3. Ejecuta las pruebas con:

   ```sh
   mvn test
   ```

## Estrategia de Automatización

- **Cobertura CRUD**: Se cubren todos los endpoints de usuarios (GET, POST, GET by ID, PUT, DELETE).
- **Escenarios positivos y negativos**: Cada feature incluye casos exitosos y de error.
- **Validación de esquemas**: Se validan las respuestas y estructuras JSON.
- **Datos dinámicos**: Emails y datos generados dinámicamente para evitar colisiones.
- **Reutilización**: Uso de `Background` y llamadas entre features para preparar datos.

## Patrones Utilizados

- Separación de features por endpoint.
- Utilidades Java para generación de datos.
- Validaciones explícitas de status y mensajes.

## Contacto

Para dudas o mejoras, abre un issue o pull request.
