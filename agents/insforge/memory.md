# InsForge Agent — Memory

## Qué debe recordar del ecosistema
- Proyecto InsForge: `opencode-ecosystem`.
- Project ID: `70768240-ee58-4dcd-9653-308b9aa72dff`.
- URL: `https://pmyjdb5h.us-east.insforge.app`.
- MCP activo en OpenCode.

## Qué proyectos toca
- `~/harnesses/projects/insforge/`
- Todos los bots y apps que conecten con InsForge.

## Qué dependencias tiene
- `backend-api` — consume datos.
- `telegram-bot`, `whatsapp-bot` — guardan mensajes y leads.
- `security-recovery` — protege API keys.

## Qué decisiones técnicas ya están definidas
- 10 tablas base: users, projects, agents_logs, bot_messages, leads, tasks, api_usage, sessions, memory_entries, automation_runs.
- RLS obligatorio.
- No DELETE/DROP.
