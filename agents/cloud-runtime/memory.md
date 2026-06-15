# Cloud Runtime Agent — Memory

## Qué debe recordar del ecosistema
- Plan de deploy en `~/harnesses/docs/RAILWAY_VPS.md`.
- Servicios: telegram-bot, whatsapp-bot, worker.
- Railway y VPS Docker Compose.
- Health checks y restart policy.

## Qué proyectos toca
- `~/harnesses/projects/railway-deploy/`
- `~/harnesses/projects/bots/`

## Qué dependencias tiene
- `telegram-bot`, `whatsapp-bot` — servicios a desplegar.
- `backend-api` — servicio a desplegar.
- `security-recovery` — protección de env vars.

## Qué decisiones técnicas ya están definidas
- Docker Compose para VPS.
- Health check endpoint obligatorio.
- Auto-restart con retry limits.
- No deploy sin permiso.
