# Skill: mcp-risk-review

## Fuente
- Tipo: Adaptado de reglas de seguridad MCP del ecosistema
- Licencia: Uso interno

## Adaptación para OpenCode
Evalúa riesgos antes de habilitar o modificar un MCP.

## Agente dueño
MCP Operations Agent

## Categoría
MCP / Security

## Objetivo
Prevenir que MCPs inseguros expongan datos, ejecuten comandos peligrosos o comprometan el sistema.

## Cuándo usarla
- Antes de habilitar un MCP nuevo.
- Antes de modificar el command de un MCP.
- Antes de dar acceso a filesystem o terminal.
- Cuando se recibe un MCP de una fuente externa.

## Riesgos por MCP

| MCP | Riesgo | Mitigación |
|---|---|---|
| filesystem | Acceso a archivos sensibles | Limitar a `~/harnesses` |
| safe-terminal | Ejecución de comandos | Wrapper con confirmación |
| fetch-web | Exposición de URLs | No acceder a sitios sensibles |
| Playwright | Navegación web no controlada | No login, no compras, no banking |
| InsForge | Acceso a base de datos | Solo lectura, no DELETE/DROP |

## Pasos seguros
1. Identificar MCP a evaluar.
2. Revisar qué acceso da (filesystem, terminal, red, DB).
3. Evaluar si puede exponer secretos.
4. Evaluar si puede ejecutar comandos destructivos.
5. Evaluar si puede acceder a datos sensibles.
6. Documentar riesgos.
7. Recomendar: habilitar, habilitar con restricciones, o rechazar.

## Comandos permitidos
- Lectura de `opencode.json`.
- Lectura de MCP READMEs.

## Validación
- Riesgos documentados.
- Mitigaciones definidas.
- El usuario aprobó el riesgo.

## Riesgos
- MCP mal configurado expone el sistema.
- MCP con acceso a terminal ejecuta comandos sin control.

## Estado
adapted
