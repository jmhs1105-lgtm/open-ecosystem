# Telegram Bot Agent — Tools

## Herramientas recomendadas
- Telegraf o grammY.
- ngrok para webhooks locales.
- InsForge SDK.

## MCPs relacionados
- InsForge MCP.

## Comandos de diagnóstico
```bash
node bot.js
curl https://api.telegram.org/bot<TOKEN>/getMe
```

## Archivos que puede leer
- `~/harnesses/projects/bots/telegram/**/*.js`
- `~/harnesses/projects/bots/telegram/package.json`

## Archivos que puede modificar con cuidado
- Código del bot.
- `.env.example`.
- `package.json`.

## Archivos prohibidos sin permiso
- `.env` con token real.
