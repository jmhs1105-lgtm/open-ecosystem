# Skill: health-check-endpoint

## Fuente
- Tipo: Adaptado de patrones de Express/Fastify y mejores prácticas de backend
- Licencia: MIT

## Adaptación para OpenCode
Crea endpoints de health check para monitoreo de servicios.

## Agente dueño
Backend API Agent

## Categoría
Backend / Health

## Objetivo
Crear endpoints que reporten el estado del servicio.

## Cuándo usarla
- Al crear un backend nuevo.
- Al preparar deploy a Railway/VPS.
- Al configurar monitoreo.
- Al integrar con bots.

## Patrón recomendado

```
GET /health → 200 OK
{
  "status": "ok",
  "uptime": 12345,
  "timestamp": "2026-06-15T00:00:00Z",
  "version": "1.0.0"
}
```

## Pasos seguros
1. Crear ruta `/health`.
2. Retornar status, uptime, timestamp.
3. Verificar conexiones a DB si aplica.
4. Retornar 500 si hay problemas.

## Comandos permitidos
- `curl http://localhost:3000/health`.

## Estado
adapted
