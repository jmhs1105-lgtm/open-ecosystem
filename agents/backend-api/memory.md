# Backend API Agent — Memory

## Qué debe recordar del ecosistema
- Backend base planificado en `~/harnesses/projects/`.
- Node.js 26.x disponible.
- InsForge como backend potencial.
- Logs estructurados obligatorios.

## Qué proyectos toca
- `~/harnesses/projects/backend/` (cuando exista)
- `~/harnesses/projects/bots/*/`

## Qué dependencias tiene
- `insforge` — auth/database/storage.
- `telegram-bot` / `whatsapp-bot` — consumen endpoints.
- `react-native-expo` / `android-architect` — consumen endpoints.
- `cloud-runtime` — despliega backend.

## Qué decisiones técnicas ya están definidas
- Node.js + Express/Fastify.
- JWT para auth.
- Arquitectura modular.
- Variables de entorno en `.env`.
