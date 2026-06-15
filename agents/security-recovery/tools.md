# Security & Recovery Agent — Tools

## Herramientas recomendadas
- `tar`, `cp`, `rsync` para backups.
- `python3 -m json.tool`.
- `gitleaks` si está disponible.
- `chmod` para permisos.

## MCPs relacionados
- Ninguno específico.

## Comandos de diagnóstico
```bash
~/harnesses/scripts/ocbackup
~/harnesses/scripts/ocdoctor
python3 -m json.tool ~/.config/opencode/opencode.json
grep -r \"providers\" ~/.config/opencode/
```

## Archivos que puede leer
- Toda la documentación.
- Configs (solo lectura).
- `.env` (sin imprimir contenido).

## Archivos que puede modificar con cuidado
- Permisos de archivos sensibles.
- Backups.

## Archivos prohibidos sin permiso
- Contenido de `.env` no debe exponerse.
- No restaurar sin confirmación.
