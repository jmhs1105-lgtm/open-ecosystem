# Telegram Bot Agent — Memory

## Qué debe recordar del ecosistema
- Bot planificado en `~/harnesses/projects/bots/telegram/`.
- Debe conectar con InsForge para guardar leads.
- Debe correr 24/7 en Railway/VPS.
- Token nunca se imprime.

## Qué proyectos toca
- `~/harnesses/projects/bots/telegram/`

## Qué dependencias tiene
- `backend-api` — endpoints consumidos.
- `insforge` — almacenamiento.
- `cloud-runtime` — deploy 24/7.

## Qué decisiones técnicas ya están definidas
- Telegraf o grammY.
- Webhook o polling según entorno.
- `.env` gitignored.
