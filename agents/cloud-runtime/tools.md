# Cloud Runtime Agent — Tools

## Herramientas recomendadas
- Docker Desktop o Docker Engine.
- Railway CLI.
- PM2.
- curl para health checks.

## MCPs relacionados
- Safe-Terminal MCP (si habilitado).

## Comandos de diagnóstico
```bash
docker build -t test .
docker compose config
curl http://localhost:3000/health
```

## Archivos que puede leer
- `~/harnesses/projects/railway-deploy/**/*`
- `~/harnesses/projects/bots/*/package.json`
- `~/harnesses/docs/RAILWAY_VPS.md`

## Archivos que puede modificar con cuidado
- Dockerfiles.
- docker-compose.yml.
- Scripts de inicio.
- `.env.example`.

## Archivos prohibidos sin permiso
- `.env` real.
- Credenciales de Railway/VPS.
