# MCP Operations Agent — Tools

## Herramientas recomendadas
- `python3 -m json.tool`
- `jq` si está disponible.
- OpenCode file tools.

## MCPs relacionados
- Todos los MCPs del ecosistema.

## Comandos de diagnóstico
```bash
python3 -m json.tool ~/.config/opencode/opencode.json
ls ~/harnesses/mcp/
```

## Archivos que puede leer
- `~/.config/opencode/opencode.json`
- `~/harnesses/opencode/MCP.md`
- `~/harnesses/mcp/*/README.md`

## Archivos que puede modificar con cuidado
- `~/harnesses/opencode/MCP.md`
- `~/harnesses/mcp/*/README.md`

## Archivos prohibidos sin permiso
- `~/.config/opencode/opencode.json` sin backup.
