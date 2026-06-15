# MODEL_ROTATION_POLICY - Política de Rotación de Modelos

**Última actualización**: 2026-06-15
**Objetivo**: Definir cuándo y cómo rotar entre modelos para optimizar costo, velocidad y calidad.

---

## REGLAS DE ROTACIÓN

### Regla 1: Tarea Simple → Económico
**Cuándo**: Documentación, chat, exploración, lectura de archivos.
**Modelos**:
- `opencode/deepseek-v4-flash-free`
- `opencode/big-pickle`

### Regla 2: Tarea Rápida → Rápido
**Cuándo**: Respuestas inmediatas, validaciones, búsquedas.
**Modelos**:
- `opencode-go/deepseek-v4-flash`
- `opencode-go/kimi-k2.6`
- `opencode-go/minimax-m2.5`
- `opencode-go/minimax-m2.7`
- `opencode-go/glm-5`

### Regla 3: Código Real → Principal
**Cuándo**: Escribir, modificar, revisar código.
**Modelos**: Modelo principal del agente (ver provider-notes.md).

### Regla 4: Error Repetido 2 Veces → Escalamiento
**Cuándo**: Mismo error ocurre 2 veces con modelo principal.
**Acción**: Cambiar a modelo de escalamiento del agente.
**Modelos**:
- `opencode-go/qwen3.7-max`
- `opencode-go/deepseek-v4-pro`
- `opencode-go/kimi-k2.7-code`
- `opencode-go/mimo-v2.5-pro`

### Regla 5: Modelo Lento → Cambiar a Rápido
**Cuándo**: Modelo tarda más de 30 segundos en responder.
**Acción**: Cambiar a modelo rápido del mismo agente.

### Regla 6: Mucho Contexto → Resumir Primero
**Cuándo**: Contexto > 50K tokens.
**Acción**:
1. Resumir contexto con modelo económico
2. Enviar resumen a modelo principal

### Regla 7: Riesgo de Romper Sistema → Security & Recovery
**Cuándo**: Cambios en configuración, deploy, producción.
**Acción**: Delegar a Security & Recovery Agent.

### Regla 8: Cambios Grandes de Arquitectura → Software Architect
**Cuándo**: Refactors grandes, nueva arquitectura, decisiones técnicas.
**Acción**: Delegar a Software Architect Agent.

### Regla 9: Nunca Usar Escalamiento para Documentación Simple
**Prohibido**: Usar `qwen3.7-max` o `deepseek-v4-pro` para tareas simples.

---

## FLUJO DE ROTACIÓN

```
Tarea llega
  ↓
¿Es simple? → Tier Free
  ↓
¿Es rápida? → Tier Rápido
  ↓
¿Es código? → Modelo principal del agente
  ↓
¿Falla? → Fallback del agente
  ↓
¿Falla 2 veces? → Tier Escalamiento
  ↓
¿Es lento? → Cambiar a rápido
  ↓
¿Mucho contexto? → Resumir primero
  ↓
¿Riesgo? → Security & Recovery
  ↓
¿Arquitectura? → Software Architect
```

---

## ROTACIÓN POR AGENTE

Cada agente tiene su propia asignación en:
`~/harnesses/agents/<agent>/memory/provider-notes.md`

### Estructura de Rotación por Agente

```
Económico: [modelo para tareas simples]
Principal: [modelo para código/tareas principales]
Rápido: [modelo para respuestas rápidas]
Escalamiento: [modelo para errores repetidos]
Fallback: [modelo de respaldo]
```

---

## CUÁNDO NO ROTAR

### No Rotar Si:
- Modelo principal está funcionando bien
- Tarea es crítica y requiere consistencia
- Usuario especificó modelo específico
- Modelo de escalamiento ya está resolviendo

### Rotar Si:
- Modelo falla 2+ veces
- Modelo es muy lento
- Tarea cambió de tipo (simple → código)
- Contexto creció demasiado

---

## MONITOREO DE ROTACIÓN

### Señales de Buena Rotación
- Tareas simples usan tier free
- Código usa modelo principal
- Errores escalan correctamente
- Fallback funciona cuando necesario

### Señales de Mala Rotación
- Tareas simples usan modelos costosos
- Errores no escalan
- Modelo lento no se cambia
- Contexto no se resume

---

## VALIDACIÓN

```bash
~/harnesses/scripts/ocmodels-allowed-check
```
