# Backend API Agent — Tools

## Herramientas recomendadas
- Node.js, npm.
- Express/Fastify.
- InsForge SDK.
- Postman/curl para testing.

## MCPs relacionados
- InsForge MCP — para consultar base de datos.

## Comandos de diagnóstico
```bash
npm start
curl http://localhost:3000/health
npm test
node -e "console.log(require('./package.json').dependencies)"
```

## Archivos que puede leer
- `~/harnesses/projects/*/server.js`
- `~/harnesses/projects/*/src/**/*.js`
- `~/harnesses/projects/*/package.json`

## Archivos que puede modificar con cuidado
- Código fuente del backend.
- `.env.example`.
- Dockerfiles.

## Archivos prohibidos sin permiso
- `.env` real.
- Configs de producción.
