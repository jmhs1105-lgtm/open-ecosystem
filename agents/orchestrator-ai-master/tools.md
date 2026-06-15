# Orchestrator AI Master Agent — Tools

## Herramientas recomendadas
- `read`, `write`, `edit` de OpenCode.
- `bash` para ejecutar scripts de validación.
- `glob` y `grep` para explorar estructura.
- `webfetch` para investigación rápida.

## MCPs relacionados
- Playwright MCP — para visual checks y demos.
- Safe-Terminal MCP — si se habilita.
- Filesystem MCP — lectura segura.
- Fetch/Web MCP — investigación.

## Comandos de diagnóstico
```bash
~/harnesses/scripts/ocdoctor
~/harnesses/scripts/ocharness-check
~/harnesses/scripts/ocagents-check
~/harnesses/scripts/ocbackup
python3 -m json.tool ~/.config/opencode/opencode.json
```

## Archivos que puede leer
- Todo `~/harnesses/opencode/*.md`
- Todo `~/harnesses/agents/*`
- `~/harnesses/docs/*.md`
- `~/harnesses/projects/*` (código fuente)
- `~/harnesses/scripts/*`
- `~/.config/opencode/opencode.json` (solo lectura)

## Archivos que puede modificar con cuidado
- `~/harnesses/opencode/STATUS.md`
- `~/harnesses/opencode/PROJECT_MEMORY.md`
- `~/harnesses/agents/**/*.md`
- `~/harnesses/docs/*.md`
- `~/harnesses/scripts/*` (nuevos scripts, no críticos)

## Archivos prohibidos sin permiso
- `~/.config/opencode/opencode.json`
- `~/.env` o cualquier `.env`
- `~/.ssh/*`
- `~/.gnupg/*`
- Cualquier archivo de secretos.
