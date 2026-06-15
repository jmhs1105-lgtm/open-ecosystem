# Security & Recovery Agent — Skills

## Skills principales
- Backups y snapshots.
- Rollback.
- Validación JSON.
- Detección de secrets.
- Protección de configs.
- Auditoría de seguridad.

## Skills secundarias
- Git básico.
- Permisos de archivos.
- Gitleaks (si instalado).
- Análisis de riesgos.

## Tecnologías que domina
- zsh/bash.
- Python JSON tool.
- OpenCode config.
- tar/cp para backups.

## Comandos seguros permitidos
- `~/harnesses/scripts/ocbackup`
- `cp -r` para backups.
- `python3 -m json.tool`
- `chmod 600 .env`

## Comandos peligrosos que requieren confirmación
- `rm -rf` de cualquier tipo.
- `cp` sobre configs sin backup.
- Restaurar desde snapshot.
