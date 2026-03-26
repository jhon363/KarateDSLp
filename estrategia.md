# Informe de Estrategia de Automatización

## Estrategia
- Se implementó una suite de pruebas automatizadas para la API de Usuarios de ServeRest usando Karate DSL.
- Se cubren todos los endpoints CRUD con escenarios positivos y negativos.
- Se validan status codes, mensajes y esquemas JSON.
- Se utilizan datos dinámicos para evitar colisiones y asegurar independencia de pruebas.
- Se organizan los feature files por endpoint para claridad y mantenibilidad.

## Patrones
- Uso de Background para configuración común.
- Reutilización de escenarios mediante llamadas entre features.
- Utilidades Java para generación de datos de prueba.
- Validaciones explícitas de estructura y contenido de las respuestas.

## Manejo de Datos
- Emails y datos generados dinámicamente.
- Separación de utilidades para facilitar la extensión y mantenimiento.

## Organización
- Estructura estándar Karate/Maven.
- Documentación clara en README.
