# OpenCode Ecosystem Agents

## Visión general

Este ecosistema opera con 14 agentes especializados coordinados por el **Orchestrator AI Master Agent**.

- **1 Orquestador Maestro**
- **13 Agentes operativos**

Cada agente tiene su propia carpeta en `~/harnesses/agents/` con documentación completa.

---

## Estructura de cada agente

```
~/harnesses/agents/<agent-name>/
├── agent.md       # Nombre, rol, misión, responsabilidades, reglas
├── skills.md      # Skills, tecnologías, comandos permitidos/prohibidos
├── checklist.md   # Checklist antes/durante/después + rollback
├── tools.md       # Herramientas, MCPs, archivos permitidos/prohibidos
├── memory.md      # Contexto del ecosistema que debe recordar
```

El **Orchestrator AI Master** incluye además:

```
orchestrator-ai-master/
├── routing.md     # Reglas de routing entre agentes
```

---

## Lista de agentes

| # | Agente | Ruta | Rol | Usar cuando... | Estado |
|---|---|---|---|---|---|
| 0 | **Orchestrator AI Master** | `~/harnesses/agents/orchestrator-ai-master/` | Coordina todo el ecosistema | Cualquier tarea compleja o multi-dominio | ✅ Creado |
| 1 | **Android Architect** | `~/harnesses/agents/android-architect/` | Desarrollo Android nativo | Apps Android, Kotlin, Gradle, ADB, Redmi | ✅ Creado |
| 2 | **React Native Expo** | `~/harnesses/agents/react-native-expo/` | Apps cross-platform | Expo, TypeScript, UI iOS, navegación | ✅ Creado |
| 3 | **Backend API** | `~/harnesses/agents/backend-api/` | APIs y backend | Node.js, Express/Fastify, endpoints, auth | ✅ Creado |
| 4 | **InsForge** | `~/harnesses/agents/insforge/` | Base de datos cloud | Tablas, RLS, schemas, conexión backend/bots | ✅ Creado |
| 5 | **Telegram Bot** | `~/harnesses/agents/telegram-bot/` | Bots de Telegram | Comandos, leads, afiliados, 24/7 | ✅ Creado |
| 6 | **WhatsApp Bot** | `~/harnesses/agents/whatsapp-bot/` | Bots de WhatsApp | Flujos, webhooks, atención automática | ✅ Creado |
| 7 | **MCP Operations** | `~/harnesses/agents/mcp-operations/` | MCPs y herramientas | Configurar MCPs, validar opencode.json | ✅ Creado |
| 8 | **Cloud Runtime** | `~/harnesses/agents/cloud-runtime/` | Deploy 24/7 | Railway, VPS, Docker, workers | ✅ Creado |
| 9 | **AI Provider** | `~/harnesses/agents/ai-provider/` | Proveedores de IA | OpenRouter, Gemini, Groq, Ollama, LM Studio | ✅ Creado |
| 10 | **Security & Recovery** | `~/harnesses/agents/security-recovery/` | Seguridad y rollback | Backups, validación, secretos, recovery | ✅ Creado |
| 11 | **Software Architect** | `~/harnesses/agents/software-architect/` | Arquitectura general | Estructura, modularidad, roadmaps | ✅ Creado |
| 12 | **Research Agent** | `~/harnesses/agents/research-agent/` | Investigación técnica | Comparar tecnologías, docs oficiales | ✅ Creado |
| 13 | **Team Skills Architect** | `~/harnesses/agents/team-skills-architect/` | Skills senior multi-especialidad | Investigar, definir y actualizar skills de todos los agentes | ✅ Creado |

---

## Cómo el Orchestrator coordina

El Orchestrator AI Master decide qué agentes activar según el dominio:

| Tarea | Agentes involucrados |
|---|---|
| App Android + backend + deploy | `android-architect` → `backend-api` → `insforge` → `cloud-runtime` |
| App Expo + auth + backend | `react-native-expo` → `backend-api` → `insforge` |
| Bot Telegram + leads + 24/7 | `telegram-bot` → `backend-api` → `insforge` → `cloud-runtime` |
| Nuevo proveedor de IA | `software-architect` → `ai-provider` → `security-recovery` |
| Migración desde Kali | `security-recovery` + agentes de destino + `orchestrator-ai-master` |
| Configurar MCP | `mcp-operations` → `security-recovery` |
| Arquitectura general | `software-architect` → `orchestrator-ai-master` |
| Investigación tecnológica | `research-agent` → `software-architect` |

---

## Reglas comunes a todos los agentes

1. **Nunca imprimir secretos.**
2. **Nunca hacer deploy sin permiso.**
3. **Nunca hacer git push sin permiso.**
4. **Nunca borrar archivos sin confirmación y backup.**
5. **Nunca modificar `~/.config/opencode/opencode.json` sin backup.**
6. **Siempre validar JSON después de cambios.**
7. **Siempre usar staging para importaciones desde Kali.**
8. **Siempre crear backup antes de cambios críticos.**
9. **Si prioridad: estabilidad, luego potencia.**
10. **Si algo falla, detenerse y explicar.**

---

## Validación

Para verificar que todos los agentes estén correctamente creados:

```bash
~/harnesses/scripts/ocagents-check
```

Para verificar salud general del ecosistema:

```bash
~/harnesses/scripts/ocharness-check
```
