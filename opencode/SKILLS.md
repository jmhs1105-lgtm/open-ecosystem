# SKILLS — OpenCode Skills Taxonomy

**Last Updated**: 2026-06-15
**Total Categories**: 20
**Status**: Structure created, skills pending

---

## Taxonomy

| # | Category | Path | Agent Owner | Level | Status |
|---|---|---|---|---|---|
| 1 | Core OpenCode | `skills/automation/` | Orchestrator AI Master | Crítico | 📋 Planned |
| 2 | Agent Orchestration | `skills/automation/` | Orchestrator AI Master | Avanzado | 📋 Planned |
| 3 | Android Development | `skills/android/` | Android Architect | Avanzado | 📋 Planned |
| 4 | React Native Expo | `skills/react-native-expo/` | React Native Expo Agent | Avanzado | 📋 Planned |
| 5 | Backend API | `skills/backend/` | Backend API Agent | Avanzado | 📋 Planned |
| 6 | InsForge Backend | `skills/insforge/` | InsForge Agent | Avanzado | 📋 Planned |
| 7 | Telegram Bots | `skills/bots/` | Telegram Bot Agent | Avanzado | 📋 Planned |
| 8 | WhatsApp Bots | `skills/bots/` | WhatsApp Bot Agent | Intermedio | 📋 Planned |
| 9 | MCP Operations | `skills/mcp/` | MCP Operations Agent | Crítico | 📋 Planned |
| 10 | Playwright Browser | `skills/mcp/` | MCP Operations Agent | Avanzado | 📋 Planned |
| 11 | Cloud Runtime | `skills/railway/`, `skills/vps/` | Cloud Runtime Agent | Avanzado | 📋 Planned |
| 12 | AI Providers | `skills/ai-providers/` | AI Provider Agent | Avanzado | 📋 Planned |
| 13 | Security & Recovery | `skills/security-defensive/` | Security & Recovery Agent | Crítico | 📋 Planned |
| 14 | Software Architecture | `skills/docs/` | Software Architect Agent | Avanzado | 📋 Planned |
| 15 | Research | `skills/docs/` | Research Agent | Intermedio | 📋 Planned |
| 16 | Testing & QA | `skills/testing/` | All Agents | Avanzado | 📋 Planned |
| 17 | Observability & Logs | `skills/observability/` | Cloud Runtime Agent | Intermedio | 📋 Planned |
| 18 | Affiliate Automation | `skills/affiliate-marketing/` | Telegram Bot Agent | Intermedio | 📋 Planned |
| 19 | Database | `skills/insforge/` | InsForge Agent | Avanzado | 📋 Planned |
| 20 | Documentation | `skills/docs/` | Software Architect + Research | Básico | 📋 Planned |

---

## Skill Format

Each skill file (`SKILL.md` or individual `.md` in `agents/*/skills/`) must include:

```
- Nombre de skill
- Categoría
- Agente dueño
- Nivel: básico / intermedio / avanzado / crítico
- Para qué sirve
- Cuándo usarla
- Entradas necesarias
- Salidas esperadas
- Herramientas relacionadas
- Riesgos
- Validación
- Estado: planned / documented / ready / tested
```

---

## Rules

- Skills are loaded on demand, not all at once.
- Each skill must have a SKILL.md explaining its purpose.
- No skill may contain secrets, tokens, or API keys.
- Skills are validated before use.
- Skills are loaded from `~/harnesses/skills/` (configured in opencode.json).
- Each skill has one canonical owner agent.
- Cross-references between agents are OK but the canonical file lives in one place.

---

## Priority Levels

| Level | Meaning | Examples |
|---|---|---|
| **Crítico** | Must work before any other skill | safety-gate, rollback, backup, MCP health |
| **Avanzado** | Core workflow skill | Android build, Expo app, Backend API, InsForge schema |
| **Intermedio** | Useful but not blocking | WhatsApp bot, affiliate, observability |
| **Básico** | Nice to have | Documentation templates, research patterns |

---

## Validation

```bash
~/harnesses/scripts/ocskills-check   # Validate skills structure
~/harnesses/scripts/ocagents-check   # Validate agents
~/harnesses/scripts/ocharness-check  # Validate ecosystem
```
