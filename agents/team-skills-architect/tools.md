# Team Skills Architect Agent — Tools

## Herramientas recomendadas
- `webfetch` para investigación de tecnologías.
- `npm view <pkg>` para verificar librerías activas.
- `npm search <term>` para descubrimiento.
- `grep`, `find`, `ls` para explorar skills actuales.
- OpenCode read/edit para modificar skills.md.

## MCPs relacionados
- Fetch/Web MCP (si habilitado) — investigación.
- Playwright MCP — demos de tecnologías.

## Comandos de diagnóstico
```bash
npm view kotlin version 2>/dev/null
npm view @react-navigation/native version 2>/dev/null
webfetch https://developer.android.com/kotlin
```

## Archivos que puede leer
- `~/harnesses/agents/**/skills.md`
- `~/harnesses/agents/**/agent.md`
- `~/harnesses/agents/**/memory.md`
- `~/harnesses/agents/**/tools.md`
- `~/harnesses/agents/**/checklist.md`
- `~/harnesses/opencode/AGENTS.md`

## Archivos que puede modificar con cuidado
- `~/harnesses/agents/**/skills.md` — con investigación previa.
- `~/harnesses/agents/README.md` — si hay cambios en la tabla de skills.

## Archivos prohibidos sin permiso
- `~/.config/opencode/opencode.json`.
- `.env` de cualquier proyecto.
- agent.md sin coordinación.
