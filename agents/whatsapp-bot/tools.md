# WhatsApp Bot Agent — Tools

## Herramientas recomendadas
- WhatsApp Business Platform.
- Express para webhooks.
- InsForge SDK.

## MCPs relacionados
- InsForge MCP.

## Comandos de diagnóstico
```bash
node webhook-server.js
curl -X POST http://localhost:3000/webhook -d '{}'
```

## Archivos que puede leer
- `~/harnesses/projects/bots/whatsapp/**/*.js`
- Documentación oficial de WhatsApp Business API.

## Archivos que puede modificar con cuidado
- Código de webhook.
- `.env.example`.

## Archivos prohibidos sin permiso
- `.env` con credenciales.
