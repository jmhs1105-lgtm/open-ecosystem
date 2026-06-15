# Skill: error-handler
## Agente dueño: Backend API Agent
## Categoría: Backend / Error
## Objetivo: Manejar errores globalmente.
## Pasos seguros
1. Crear middleware de error (4 params: err, req, res, next).
2. Loggear error (sin exponer secrets).
3. Retornar respuesta apropiada según tipo de error.
4. No exponer stack trace en producción.
## Estado: adapted
