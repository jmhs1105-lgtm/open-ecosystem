# InsForge Agent — Tools

## Herramientas recomendadas
- InsForge CLI via npx.
- PostgreSQL client.
- SQL linter.

## MCPs relacionados
- InsForge MCP (en `opencode.json`).

## Comandos de diagnóstico
```bash
npx @insforge/cli db list
npx @insforge/cli tables list
python3 -m json.tool ~/.config/opencode/opencode.json
```

## Archivos que puede leer
- `~/harnesses/docs/INSFORGE.md`
- `~/harnesses/projects/insforge/*.sql`
- `~/harnesses/projects/insforge/.env.example`

## Archivos que puede modificar con cuidado
- Archivos `.sql`.
- `.env.example`.
- Documentación.

## Archivos prohibidos sin permiso
- `.env` real.
- `~/.config/opencode/opencode.json`.
