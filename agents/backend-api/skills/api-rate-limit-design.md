# Skill: api-rate-limit-design
## Agente dueño: Backend API Agent
## Categoría: Backend / Security
## Objetivo: Implementar rate limiting.
## Pasos seguros
1. Usar `express-rate-limit` o similar.
2. Configurar límites por IP.
3. Retornar 429 cuando se excede.
4. Exponer headers `X-RateLimit-*`.
## Estado: adapted
