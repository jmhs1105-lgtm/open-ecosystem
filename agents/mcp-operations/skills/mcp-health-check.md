# Skill: mcp-health-check

## Fuente
- Tipo: Adaptado de documentación MCP y prácticas del ecosistema
- Licencia: Apache 2.0 / Uso interno

## Adaptación para OpenCode
Verifica que los MCPs configurados estén operativos y correctamente instalados.

## Agente dueño
MCP Operations Agent

## Categoría
MCP / Operations

## Objetivo
Diagnosticar el estado de cada MCP: instalado, configurado, habilitado, funcional.

## Cuándo usarla
- Después de modificar `opencode.json`.
- Cuando un MCP no responde.
- Después de instalar un MCP package.
- Antes de usar Playwright o InsForge MCP.
- En revisiones periódicas de salud.

## Pasos seguros
1. Leer `~/.config/opencode/opencode.json` (solo lectura).
2. Listar MCPs configurados en la sección `mcp`.
3. Para cada MCP:
   - Verificar si `enabled: true/false`.
   - Verificar si el `command` es válido.
   - Verificar si el package está instalado (con `npm list -g` o `which`).
   - Verificar si el ejecutable existe.
4. Ejecutar `~/harnesses/scripts/ocmcp`.
5. Reportar estado de cada MCP.

## Comandos permitidos
- `python3 -m json.tool ~/.config/opencode/opencode.json`.
- `npm list -g <package>`.
- `which <command>`.
- `~/harnesses/scripts/ocmcp`.

## Comandos que requieren confirmación
- `npm install -g <package>` (instalación).
- Modificar `opencode.json`.

## Archivos permitidos
- `~/.config/opencode/opencode.json` (lectura).
- `~/harnesses/mcp/*/README.md` (lectura).

## Archivos prohibidos
- `.env` con tokens.

## Validación
- Cada MCP reporta su estado.
- No hay MCPs con command roto.
- JSON sigue siendo válido después de cambios.

## Rollback
- Deshabilitar MCP problemático en `opencode.json`.

## Riesgos
- MCP roto impide que OpenCode inicie.
- MCP con command incorrecto consume recursos.

## Estado
adapted
