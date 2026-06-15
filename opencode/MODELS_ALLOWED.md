# MODELS_ALLOWED - Lista Autorizada de Modelos

**Última actualización**: 2026-06-15
**Total**: 16 modelos
**Proveedores**: 2 (OpenCode Zen Free, OpenCode Go)

---

## PROVEEDOR 1: OpenCode Zen Free

Modelos gratuitos sin costo por token.

| # | Modelo | ID | Uso recomendado | Prioridad | Notas |
|---|---|---|---|---|---|
| 1 | DeepSeek V4 Flash Free | `opencode/deepseek-v4-flash-free` | Tareas simples, documentación, chat rápido | Alta | Modelo actual por defecto. Gratis temporalmente. |
| 2 | Big Pickle | `opencode/big-pickle` | Tareas generales, fallback gratuito | Media | Modelo stealth. Gratis temporalmente. |

---

## PROVEEDOR 2: OpenCode Go

Modelos incluidos en suscripción ($5 primer mes, $10/mes).

| # | Modelo | ID | Uso recomendado | Prioridad | Notas |
|---|---|---|---|---|---|
| 1 | GLM-5.1 | `opencode-go/glm-5.1` | Orquestación, tareas complejas, investigación | Alta | Modelo agentic. Bueno para contexto largo. |
| 2 | GLM-5 | `opencode-go/glm-5` | Tareas rápidas, orquestación ligera | Media | Versión más rápida de GLM. |
| 3 | Kimi K2.7 Code | `opencode-go/kimi-k2.7-code` | Código, programación, refactors | Alta | Especializado en código. |
| 4 | Kimi K2.6 | `opencode-go/kimi-k2.6` | Tareas rápidas, código ligero | Media | Versión anterior de Kimi. |
| 5 | DeepSeek V4 Pro | `opencode-go/deepseek-v4-pro` | Código complejo, escalamiento | Alta | Versión pro de DeepSeek. |
| 6 | DeepSeek V4 Flash | `opencode-go/deepseek-v4-flash` | Tareas rápidas, económico | Alta | Muy rápido y barato. |
| 7 | MiMo-V2.5 | `opencode-go/mimo-v2.5` | Orquestación, tareas agentic | Media | Bueno para flujos multi-paso. |
| 8 | MiMo-V2.5-Pro | `opencode-go/mimo-v2.5-pro` | Orquestación compleja, principal | Alta | Versión pro para tareas críticas. |
| 9 | MiniMax M3 | `opencode-go/minimax-m3` | Tareas generales | Media | Modelo general. |
| 10 | MiniMax M2.7 | `opencode-go/minimax-m2.7` | Tareas rápidas | Media | Rápido y económico. |
| 11 | MiniMax M2.5 | `opencode-go/minimax-m2.5` | Tareas rápidas, económico | Media | Versión anterior. |
| 12 | Qwen3.7 Max | `opencode-go/qwen3.7-max` | Escalamiento, tareas críticas | Alta | Modelo más potente de Qwen. |
| 13 | Qwen3.7 Plus | `opencode-go/qwen3.7-plus` | Código, tareas balanceadas | Alta | Balance entre costo y calidad. |
| 14 | Qwen3.6 Plus | `opencode-go/qwen3.6-plus` | Código, tareas rápidas | Media | Versión anterior de Qwen Plus. |

---

## MODELOS POR TIER

### TIER FREE / AHORRO
- `opencode/deepseek-v4-flash-free`
- `opencode/big-pickle`

### TIER RÁPIDO
- `opencode-go/deepseek-v4-flash`
- `opencode-go/kimi-k2.6`
- `opencode-go/minimax-m2.5`
- `opencode-go/minimax-m2.7`
- `opencode-go/glm-5`

### TIER CODING
- `opencode-go/kimi-k2.7-code`
- `opencode-go/deepseek-v4-pro`
- `opencode-go/qwen3.7-plus`
- `opencode-go/qwen3.7-max`

### TIER AGENTIC / ORQUESTACIÓN
- `opencode-go/mimo-v2.5`
- `opencode-go/mimo-v2.5-pro`
- `opencode-go/glm-5.1`
- `opencode-go/glm-5`

### TIER ESCALAMIENTO
- `opencode-go/qwen3.7-max`
- `opencode-go/deepseek-v4-pro`
- `opencode-go/kimi-k2.7-code`
- `opencode-go/mimo-v2.5-pro`

---

## REGLAS

1. **Solo estos 16 modelos están permitidos.**
2. No agregar modelos externos sin aprobación.
3. No modificar esta lista sin backup previo.
4. Validar con `ocmodels-allowed-check` después de cambios.
5. No tocar `opencode.json` sin permiso explícito.

---

## VALIDACIÓN

```bash
~/harnesses/scripts/ocmodels-allowed-check
```
