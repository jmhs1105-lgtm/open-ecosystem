# MODEL_ROUTING - Política de Enrutamiento de Modelos

**Última actualización**: 2026-06-15
**Modelos**: 16 autorizados
**Proveedores**: OpenCode Zen Free, OpenCode Go

---

## REGLA GENERAL DE ROUTING

```
Tarea → Tipo → Tier → Modelo específico
```

### Decision Tree

1. **¿Es tarea simple?** → Tier Free/Ahorro
2. **¿Es tarea rápida?** → Tier Rápido
3. **¿Es código real?** → Tier Coding (modelo principal del agente)
4. **¿Error repetido 2 veces?** → Tier Escalamiento
5. **¿Modelo lento?** → Cambiar a Tier Rápido
6. **¿Mucho contexto?** → Resumir primero, luego ejecutar
7. **¿Riesgo de romper sistema?** → Security & Recovery Agent
8. **¿Cambio grande de arquitectura?** → Software Architect Agent

---

## ROUTING POR TIPO DE TAREA

### Documentación / Chat / Tareas Simples
**Tier**: Free/Ahorro
**Modelos**:
- `opencode/deepseek-v4-flash-free` (primario)
- `opencode/big-pickle` (fallback)

### Código / Programación
**Tier**: Coding
**Modelos**:
- `opencode-go/kimi-k2.7-code` (primario para código)
- `opencode-go/deepseek-v4-pro` (código complejo)
- `opencode-go/qwen3.7-plus` (balanceado)
- `opencode-go/qwen3.7-max` (crítico)

### Tareas Rápidas / Respuestas Inmediatas
**Tier**: Rápido
**Modelos**:
- `opencode-go/deepseek-v4-flash` (más rápido)
- `opencode-go/kimi-k2.6` (rápido)
- `opencode-go/minimax-m2.5` (económico)
- `opencode-go/minimax-m2.7` (balanceado)
- `opencode-go/glm-5` (versátil)

### Orquestación / Flujos Multi-Paso
**Tier**: Agentic
**Modelos**:
- `opencode-go/mimo-v2.5-pro` (primario)
- `opencode-go/mimo-v2.5` (ligero)
- `opencode-go/glm-5.1` (complejo)
- `opencode-go/glm-5` (rápido)

### Escalamiento / Errores Repetidos
**Tier**: Escalamiento
**Modelos**:
- `opencode-go/qwen3.7-max` (más potente)
- `opencode-go/deepseek-v4-pro` (código)
- `opencode-go/kimi-k2.7-code` (código)
- `opencode-go/mimo-v2.5-pro` (agentic)

---

## ROUTING POR AGENTE

Ver `~/harnesses/agents/<agent>/memory/provider-notes.md` para asignación específica.

### Resumen Rápido

| Agente | Principal | Rápido | Escalamiento |
|---|---|---|---|
| Orchestrator | mimo-v2.5-pro | glm-5 | qwen3.7-max |
| Android | kimi-k2.7-code | qwen3.6-plus | deepseek-v4-pro |
| React Native | kimi-k2.7-code | minimax-m2.5 | qwen3.7-plus |
| Backend | kimi-k2.7-code | minimax-m2.7 | deepseek-v4-pro |
| InsForge | mimo-v2.5-pro | deepseek-v4-flash | qwen3.7-max |
| Telegram | kimi-k2.7-code | minimax-m2.5 | deepseek-v4-pro |
| WhatsApp | kimi-k2.7-code | minimax-m2.7 | qwen3.7-plus |
| MCP | mimo-v2.5-pro | glm-5 | qwen3.7-max |
| Cloud | deepseek-v4-pro | minimax-m2.7 | kimi-k2.7-code |
| AI Provider | mimo-v2.5-pro | glm-5 | qwen3.7-max |
| Security | qwen3.7-max | glm-5 | deepseek-v4-pro |
| Architect | qwen3.7-max | deepseek-v4-flash | mimo-v2.5-pro |
| Research | glm-5.1 | glm-5 | qwen3.7-max |

---

## FALLBACK STRATEGY

```
Modelo principal falla
  ↓
Intentar fallback (definido por agente)
  ↓
Fallback falla
  ↓
Intentar modelo del mismo tier
  ↓
Todos fallan
  ↓
Reportar error al usuario
```

---

## REGLAS DE ROUTING

1. **Nunca usar escalamiento para documentación simple.**
2. **Siempre empezar con económico para tareas simples.**
3. **Código real siempre va al modelo principal del agente.**
4. **Si el modelo principal falla 2 veces, escalar.**
5. **Si el modelo es lento, cambiar a rápido.**
6. **Resumir contexto antes de enviar a modelo.**
7. **Riesgo de romper sistema → Security & Recovery.**
8. **Cambios de arquitectura → Software Architect.**

---

## VALIDACIÓN

```bash
~/harnesses/scripts/ocmodels-allowed-check
```
