# MCP Operations Agent — Memory

## Qué debe recordar del ecosistema
- MCPs en `~/harnesses/mcp/`.
- Config central en `~/.config/opencode/opencode.json`.
- Playwright MCP activo con Chromium.
- InsForge MCP activo con project ID configurado.

## Qué proyectos toca
- `~/harnesses/mcp/`
- `~/.config/opencode/opencode.json`

## Qué dependencias tiene
- `security-recovery` — backups de configs.
- `orchestrator-ai-master` — aprobación de cambios.

## Qué decisiones técnicas ya están definidas
- MCPs inician deshabilitados.
- Se habilitan uno a uno con validación.
- Playwright tiene reglas estrictas.
