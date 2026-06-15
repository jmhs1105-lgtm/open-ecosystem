# OpenCode Agents

## Visión general

Este directorio contiene los 13 agentes reales del ecosistema OpenCode en MacBook.

Cada agente es un especialista con documentación propia que define su rol, skills, herramientas, checklist y memoria.

## Estructura

```
~/harnesses/agents/
├── orchestrator-ai-master/     # Coordina todos los agentes
│   ├── agent.md
│   ├── skills.md
│   ├── checklist.md
│   ├── tools.md
│   ├── memory.md
│   └── routing.md              # Solo el orquestador
├── android-architect/
├── react-native-expo/
├── backend-api/
├── insforge/
├── telegram-bot/
├── whatsapp-bot/
├── mcp-operations/
├── cloud-runtime/
├── ai-provider/
├── security-recovery/
├── software-architect/
└── research-agent/
```

Cada agente operativo tiene:
- `agent.md`
- `skills.md`
- `checklist.md`
- `tools.md`
- `memory.md`

## Tabla de agentes

| Agente | Rol | Carpeta |
|---|---|---|
| Orchestrator AI Master | Coordina todo | `orchestrator-ai-master/` |
| Android Architect | Android nativo | `android-architect/` |
| React Native Expo | Cross-platform apps | `react-native-expo/` |
| Backend API | APIs Node.js | `backend-api/` |
| InsForge | Database cloud | `insforge/` |
| Telegram Bot | Bots Telegram | `telegram-bot/` |
| WhatsApp Bot | Bots WhatsApp | `whatsapp-bot/` |
| MCP Operations | MCPs y herramientas | `mcp-operations/` |
| Cloud Runtime | Deploy 24/7 | `cloud-runtime/` |
| AI Provider | Modelos IA | `ai-provider/` |
| Security & Recovery | Backups y seguridad | `security-recovery/` |
| Software Architect | Arquitectura | `software-architect/` |
| Research Agent | Investigación | `research-agent/` |
| Team Skills Architect | Skills senior multi-especialidad | `team-skills-architect/` |

## Comandos útiles

```bash
# Validar agentes
~/harnesses/scripts/ocagents-check

# Validar ecosistema completo
~/harnesses/scripts/ocharness-check

# Ver estructura de agentes
ls -la ~/harnesses/agents/

# Ver archivos de un agente
ls -la ~/harnesses/agents/orchestrator-ai-master/
```

## Cómo agregar un nuevo agente

1. Crear carpeta en `~/harnesses/agents/<nuevo-agente>/`.
2. Crear `agent.md`, `skills.md`, `checklist.md`, `tools.md`, `memory.md`.
3. Actualizar `~/harnesses/opencode/AGENTS.md`.
4. Actualizar esta `README.md`.
5. Ejecutar `ocagents-check` para validar.

## Cómo validar agentes

```bash
~/harnesses/scripts/ocagents-check
```

El script revisa:
- Que existan las 13 carpetas.
- Que cada una tenga los 5 archivos obligatorios.
- Que el orquestador tenga `routing.md`.
- Que `AGENTS.md` exista.
- Que no haya archivos vacíos.
- Que no se haya tocado `opencode.json`.
