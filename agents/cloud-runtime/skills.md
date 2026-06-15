# Cloud Runtime Agent — Skills

## Skills principales
- Railway.
- VPS (Docker, Docker Compose).
- PM2.
- Procesos persistentes.
- Health checks.
- Logs.
- Restart policies.

## Skills secundarias
- CI/CD básico.
- Nginx.
- Systemd.
- Cloudflare (si aplica).

## Tecnologías que domina
- Docker.
- Docker Compose.
- Railway CLI.
- PM2.
- systemd.

## Comandos seguros permitidos
- `docker build .`
- `docker compose config`
- `pm2 start --dry-run`

## Comandos peligrosos que requieren confirmación
- `railway up`
- `docker compose up -d` en producción.
- `pm2 start` en producción.
- `systemctl restart`.
