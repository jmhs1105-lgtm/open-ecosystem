# SESSION_MEMORY — Memoria Maestra de Sesión

**Propósito**: Este documento contiene TODO lo que debo recordar al iniciar cada sesión.
**24/7**: Corro en InsForge + Railway. Persisto mi estado en InsForge.
**Leer al inicio de cada sesión**: Siempre.

---

## 1. QUIÉN SOY

Soy un sistema de 14 agentes de IA orquestados, corriendo 24/7 en MacBook + Railway + InsForge.

### Stack base
- **OS**: macOS 26.3 (Intel x86_64)
- **Shell**: zsh
- **OpenCode**: v1.16.2
- **Node.js**: v26.3.0
- **Java**: JDK 17 (Homebrew)
- **Android SDK**: ~/Library/Android/sdk/ (API 35)
- **Gradle**: 9.5
- **ADB**: v37

### Home
- `~/harnesses/` — raíz del ecosistema
- `~/harnesses/projects/js-agents/` — proyectos activos
- `~/.config/opencode/opencode.json` — configuración MCP

---

## 2. PROYECTO ACTIVO

### JS Agents
- **Ruta**: `~/harnesses/projects/js-agents/`
- **Backend API**: `js-agents/backend-api/` (Express 5, Node.js)
- **InsForge**: `js-agents/insforge/` (DB, persistence, schemas)
- **Estado**: En construcción

### Asignación de modelos
Ver `~/harnesses/opencode/MODELS_ALLOWED.md`

| Agente | Principal | Económico | Rápido |
|---|---|---|---|
| Backend API | kimi-k2.7-code | deepseek-v4-flash | minimax-m2.7 |
| InsForge | mimo-v2.5-pro | mimo-v2.5 | deepseek-v4-flash |

---

## 3. PERSISTENCIA EN INSFORGE

### Tablas de estado
| Tabla | Propósito |
|---|---|
| `agent_state` | Estado actual del agente (última tarea, progreso) |
| `memory_entries` | Memoria persistente clave-valor |
| `tasks` | Tareas pendientes y completadas |
| `agents_logs` | Log de operaciones |
| `api_usage` | Uso de API y costos |

### Cómo restaurar estado
```bash
# Script de restauración
~/harnesses/scripts/ocrestore-state

# Lee de InsForge:
# - agent_state: última sesión activa
# - memory_entries: contexto persistente
# - tasks: tareas incompletas
```

### Cómo guardar estado
```bash
# Snapshot manual
npm run ocsave    # en backend-api/

# Guardar estado en InsForge
# Se hace automáticamente al completar tareas críticas
```

---

## 4. ÚLTIMA SESIÓN

**Última acción**: Sistema de persistencia cloud completo
**Fecha**: 2026-06-15
**Progreso**: 
- ✅ Backend API con Express 5
- ✅ InsForge schemas (agents, memory_entries, agent_state)
- ✅ Provider notes para todos los agentes
- ✅ Modelos documentados (16 modelos, 2 providers)
- ✅ InsForge CLI instalado y autenticado
- ✅ Tablas agent_state + memory_entries creadas en cloud
- ✅ ocsave-session — guarda estado en InsForge
- ✅ ocload-session — carga estado desde InsForge
- ✅ ocrestore-state — restaura completo (local + cloud)
- ✅ Sesión persistida en la nube
- ⬜ Conectar API key de OpenCode Go
- ⬜ Deploy a Railway

---

## 5. REGLAS CRÍTICAS

### Seguridad
1. **Nunca imprimir API keys, tokens o secretos**
2. API keys solo en `.env` (chmod 600)
3. No commitear `.env` ni secretos
4. No exponer `INSFORGE_API_KEY` en logs ni respuestas

### Operación
1. Backup antes de cambios críticos (`npm run ocsave`)
2. Validar después de cambios (`ocagents-check`, `ocharness-check`)
3. Internet lento (~6 bytes/s npm, ~3 KB/s CDN) — evitar descargas grandes
4. No modificar `opencode.json` sin backup
5. No borrar archivos sin confirmación

### Modelos
1. Tarea simple → económico (deepseek-v4-flash-free o deepseek-v4-flash)
2. Código → principal del agente
3. Error repetido → escalamiento (qwen3.7-max, deepseek-v4-pro)
4. Nunca escalamiento para docs simples

---

## 6. RUNTIME 24/7

### Infraestructura
- **Local**: MacBook (desarrollo, pruebas)
- **InsForge**: Persistencia, DB, estado de agentes
- **Railway**: Deploy 24/7 (pendiente)
- **VPS**: Alternativa a Railway (pendiente)

### Agentes de runtime
- `cloud-runtime` — deploy y monitoreo
- `insforge` — DB y persistencia
- `security-recovery` — backups y rollback
- `mcp-operations` — herramientas y MCPs

---

## 7. ARCHIVOS A REVISAR EN CADA SESIÓN

Siempre leer estos archivos al iniciar:

```bash
~/harnesses/opencode/PROJECT_MEMORY.md
~/harnesses/opencode/SESSION_MEMORY.md         # ← Este archivo
~/harnesses/opencode/MODELS_ALLOWED.md
~/harnesses/opencode/MODEL_ROUTING.md
~/harnesses/opencode/AGENTS.md
~/harnesses/opencode/SECURITY_RULES.md
~/harnesses/projects/js-agents/backend-api/PROJECT_MEMORY.md
~/harnesses/projects/js-agents/insforge/PROJECT_MEMORY.md
```
