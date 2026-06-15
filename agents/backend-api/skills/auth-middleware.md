# Skill: auth-middleware
## Agente dueño: Backend API Agent
## Categoría: Backend / Auth
## Objetivo: Crear middleware de autenticación JWT.
## Pasos seguros
1. Extraer token del header `Authorization`.
2. Verificar token con `jwt.verify()`.
3. Si inválido: retornar 401.
4. Si válido: inyectar `req.user`.
## Estado: adapted
