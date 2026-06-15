# Skill: task-routing

## Fuente
- Tipo: Adaptado de patrones de orquestación de agentes AI
- Licencia: Uso interno

## Adaptación para OpenCode
Este skill decide qué agente debe trabajar según la petición del usuario, usando las reglas definidas en `routing.md`.

## Agente dueño
Orchestrator AI Master

## Categoría
Core / Orchestration

## Objetivo
Clasificar la petición del usuario y asignar el agente correcto.

## Cuándo usarla
- Cada vez que el usuario hace una petición.
- Antes de delegar trabajo.
- Cuando la tarea toca múltiples dominios.

## Pasos seguros
1. Leer la petición del usuario.
2. Identificar el dominio técnico (Android, Expo, Backend, Bots, MCP, Cloud, AI, Security).
3. Consultar `~/harnesses/agents/orchestrator-ai-master/routing.md`.
4. Seleccionar agente(s) según la tabla de routing.
5. Si la tarea es multi-dominio, dividir en fases.
6. Delegar al agente seleccionado.
7. Validar resultado antes de continuar.

## Herramientas relacionadas
- `~/harnesses/agents/orchestrator-ai-master/routing.md`
- `~/harnesses/agents/*/agent.md`
- `~/harnesses/scripts/ocagents-check`

## Comandos permitidos
- `read` de archivos de agentes.
- `grep` para buscar patrones.

## Comandos que requieren confirmación
- Ninguno (este skill es solo lectura y decisión).

## Archivos permitidos
- `~/harnesses/agents/**/agent.md`
- `~/harnesses/agents/orchestrator-ai-master/routing.md`

## Archivos prohibidos
- `.env`, `opencode.json`, secrets.

## Validación
- El agente seleccionado existe en `~/harnesses/agents/`.
- La tarea está claramente definida.
- El usuario confirmó el plan si es complejo.

## Rollback
- No hay rollback necesario (este skill no modifica archivos).

## Riesgos
- Seleccionar el agente incorrecto.
- No dividir tareas complejas en fases.

## Estado
adapted
