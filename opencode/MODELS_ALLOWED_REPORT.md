# MODELS_ALLOWED_REPORT - Reporte Final

**Fecha**: 2026-06-15
**Ejecutado por**: Orchestrator AI Master + AI Provider Agent

---

## RESUMEN

| Métrica | Valor |
|---|---|
| Modelos agregados | 16 |
| Proveedores usados | 2 (Zen Free, Go) |
| Documentos creados | 4 centrales + 13 provider-notes |
| Script creado | ocmodels-allowed-check |
| Errores | 0 |
| Advertencias | 0 |

---

## MODELOS AGREGADOS

### OpenCode Zen Free (2 modelos)
1. `opencode/deepseek-v4-flash-free` — DeepSeek V4 Flash Free
2. `opencode/big-pickle` — Big Pickle

### OpenCode Go (14 modelos)
1. `opencode-go/glm-5.1` — GLM-5.1
2. `opencode-go/glm-5` — GLM-5
3. `opencode-go/kimi-k2.7-code` — Kimi K2.7 Code
4. `opencode-go/kimi-k2.6` — Kimi K2.6
5. `opencode-go/deepseek-v4-pro` — DeepSeek V4 Pro
6. `opencode-go/deepseek-v4-flash` — DeepSeek V4 Flash
7. `opencode-go/mimo-v2.5` — MiMo-V2.5
8. `opencode-go/mimo-v2.5-pro` — MiMo-V2.5-Pro
9. `opencode-go/minimax-m3` — MiniMax M3
10. `opencode-go/minimax-m2.7` — MiniMax M2.7
11. `opencode-go/minimax-m2.5` — MiniMax M2.5
12. `opencode-go/qwen3.7-max` — Qwen3.7 Max
13. `opencode-go/qwen3.7-plus` — Qwen3.7 Plus
14. `opencode-go/qwen3.6-plus` — Qwen3.6 Plus

---

## MODELOS POR TIER

| Tier | Modelos |
|---|---|
| Free/Ahorro | deepseek-v4-flash-free, big-pickle |
| Rápido | deepseek-v4-flash, kimi-k2.6, minimax-m2.5, minimax-m2.7, glm-5 |
| Coding | kimi-k2.7-code, deepseek-v4-pro, qwen3.7-plus, qwen3.7-max |
| Agentic | mimo-v2.5, mimo-v2.5-pro, glm-5.1, glm-5 |
| Escalamiento | qwen3.7-max, deepseek-v4-pro, kimi-k2.7-code, mimo-v2.5-pro |

---

## ASIGNACIÓN POR AGENTE

| Agente | Económico | Principal | Rápido | Escalamiento | Fallback |
|---|---|---|---|---|---|
| Orchestrator | deepseek-v4-flash-free | mimo-v2.5-pro | glm-5 | qwen3.7-max | mimo-v2.5 |
| Android | deepseek-v4-flash | kimi-k2.7-code | qwen3.6-plus | deepseek-v4-pro | qwen3.7-plus |
| React Native | deepseek-v4-flash-free | kimi-k2.7-code | minimax-m2.5 | qwen3.7-plus | deepseek-v4-flash |
| Backend | deepseek-v4-flash | kimi-k2.7-code | minimax-m2.7 | deepseek-v4-pro | qwen3.7-plus |
| InsForge | mimo-v2.5 | mimo-v2.5-pro | deepseek-v4-flash | qwen3.7-max | glm-5.1 |
| Telegram | deepseek-v4-flash-free | kimi-k2.7-code | minimax-m2.5 | deepseek-v4-pro | deepseek-v4-flash |
| WhatsApp | deepseek-v4-flash | kimi-k2.7-code | minimax-m2.7 | qwen3.7-plus | deepseek-v4-pro |
| MCP | mimo-v2.5 | mimo-v2.5-pro | glm-5 | qwen3.7-max | deepseek-v4-flash |
| Cloud | deepseek-v4-flash | deepseek-v4-pro | minimax-m2.7 | kimi-k2.7-code | qwen3.7-plus |
| AI Provider | deepseek-v4-flash-free | mimo-v2.5-pro | glm-5 | qwen3.7-max | mimo-v2.5 |
| Security | deepseek-v4-flash | qwen3.7-max | glm-5 | deepseek-v4-pro | kimi-k2.7-code |
| Architect | qwen3.7-plus | qwen3.7-max | deepseek-v4-flash | mimo-v2.5-pro | deepseek-v4-pro |
| Research | deepseek-v4-flash-free | glm-5.1 | glm-5 | qwen3.7-max | mimo-v2.5-pro |

---

## VALIDACIONES

| Script | Resultado |
|---|---|
| ocmodels-allowed-check | ✅ 20/20 pass |
| ocagents-check | ✅ 90/90 pass |
| ocharness-check | ✅ 37/37 pass |

---

## ARCHIVOS CREADOS

### Documentos centrales
- `~/harnesses/opencode/MODELS_ALLOWED.md`
- `~/harnesses/opencode/MODEL_ROUTING.md`
- `~/harnesses/opencode/TOKEN_SAVING_POLICY.md`
- `~/harnesses/opencode/MODEL_ROTATION_POLICY.md`

### Provider notes (13 agentes)
- `~/harnesses/agents/orchestrator-ai-master/memory/provider-notes.md`
- `~/harnesses/agents/android-architect/memory/provider-notes.md`
- `~/harnesses/agents/react-native-expo/memory/provider-notes.md`
- `~/harnesses/agents/backend-api/memory/provider-notes.md`
- `~/harnesses/agents/insforge/memory/provider-notes.md`
- `~/harnesses/agents/telegram-bot/memory/provider-notes.md`
- `~/harnesses/agents/whatsapp-bot/memory/provider-notes.md`
- `~/harnesses/agents/mcp-operations/memory/provider-notes.md`
- `~/harnesses/agents/cloud-runtime/memory/provider-notes.md`
- `~/harnesses/agents/ai-provider/memory/provider-notes.md`
- `~/harnesses/agents/security-recovery/memory/provider-notes.md`
- `~/harnesses/agents/software-architect/memory/provider-notes.md`
- `~/harnesses/agents/research-agent/memory/provider-notes.md`

### Script
- `~/harnesses/scripts/ocmodels-allowed-check`

### Backup
- `~/harnesses/backups/models-list-before-20260615-023038/`

---

## ERRORES
Ninguno.

## ADVERTENCIAS
Ninguna.

---

## PRÓXIMO PASO RECOMENDADO

1. **Conectar API key de OpenCode Go** en `opencode.json` como provider `opencode-go`
2. **Configurar modelo default** según preferencia (ej: `opencode-go/kimi-k2.7-code` para coding)
3. **Probar rotación** con una tarea real para validar que el routing funciona
4. **Monitorear costos** con la política de ahorro de tokens
