# TOKEN_SAVING_POLICY - Política de Ahorro de Tokens

**Última actualización**: 2026-06-15
**Objetivo**: Minimizar costos usando modelos gratuitos y económicos cuando sea posible.

---

## PRINCIPIOS DE AHORRO

### 1. Usar Tier Free Primero
**Cuándo**: Tareas simples, documentación, chat, exploración.
**Modelos**:
- `opencode/deepseek-v4-flash-free` (primario)
- `opencode/big-pickle` (fallback)

**Ejemplos**:
- Leer archivos
- Listar directorios
- Documentación simple
- Chat casual
- Exploración de código

### 2. Usar Tier Rápido para Tareas Ligeras
**Cuándo**: Tareas que requieren velocidad pero no complejidad.
**Modelos**:
- `opencode-go/deepseek-v4-flash` (más rápido)
- `opencode-go/kimi-k2.6`
- `opencode-go/minimax-m2.5`
- `opencode-go/minimax-m2.7`
- `opencode-go/glm-5`

**Ejemplos**:
- Respuestas rápidas
- Validaciones simples
- Búsquedas
- Refactors pequeños

### 3. Reservar Tier Coding para Código Real
**Cuándo**: Escribir, modificar o revisar código complejo.
**Modelos**:
- `opencode-go/kimi-k2.7-code` (primario)
- `opencode-go/deepseek-v4-pro` (complejo)
- `opencode-go/qwen3.7-plus` (balanceado)
- `opencode-go/qwen3.7-max` (crítico)

**Ejemplos**:
- Nuevas features
- Bug fixes complejos
- Refactors grandes
- Code review

### 4. Escalamiento Solo Cuando Sea Necesario
**Cuándo**: Error repetido 2+ veces, tarea crítica, modelo principal falla.
**Modelos**:
- `opencode-go/qwen3.7-max`
- `opencode-go/deepseek-v4-pro`
- `opencode-go/kimi-k2.7-code`
- `opencode-go/mimo-v2.5-pro`

**Ejemplos**:
- Bug que no se resuelve
- Tarea que falla repetidamente
- Decisión arquitectónica crítica

---

## REGLAS DE AHORRO

### Regla 1: Contexto Primero
**Antes de enviar a modelo**:
- Resumir contexto largo
- Eliminar información irrelevante
- Enfocar en el problema específico

### Regla 2: Tarea Simple → Modelo Simple
**Nunca usar**:
- `qwen3.7-max` para leer archivos
- `deepseek-v4-pro` para listar directorios
- `kimi-k2.7-code` para documentación simple

### Regla 3: Fallback Inteligente
**Si modelo principal falla**:
1. Intentar fallback del mismo agente
2. Si fallback falla, intentar modelo del mismo tier
3. Si todos fallan, escalar

### Regla 4: No Repetir Errores
**Si modelo falla 2 veces**:
- Escalar a tier superior
- No insistir en el mismo modelo
- Reportar al usuario

### Regla 5: Velocidad vs Costo
**Prioridad**:
1. Tareas críticas → velocidad (aunque cueste más)
2. Tareas normales → balance
3. Tareas simples → ahorro

---

## ESTIMACIÓN DE COSTOS (OpenCode Go)

### Modelos Más Económicos (por 1M tokens)
1. `deepseek-v4-flash`: $0.14 input / $0.28 output
2. `minimax-m2.5`: $0.30 input / $1.20 output
3. `minimax-m2.7`: $0.30 input / $1.20 output
4. `qwen3.7-plus`: $0.40 input / $1.60 output
5. `glm-5`: $1.00 input / $3.20 output

### Modelos Más Costosos
1. `qwen3.7-max`: $2.50 input / $7.50 output
2. `deepseek-v4-pro`: $1.74 input / $3.48 output
3. `glm-5.1`: $1.40 input / $4.40 output
4. `kimi-k2.7-code`: $0.95 input / $4.00 output

---

## PATRONES DE AHORRO

### Patrón 1: Exploración → Ejecución
```
1. Explorar con deepseek-v4-flash-free (gratis)
2. Entender el problema
3. Ejecutar con modelo principal del agente
```

### Patrón 2: Documentación → Código
```
1. Documentar con deepseek-v4-flash-free (gratis)
2. Planificar con modelo rápido
3. Codificar con modelo principal
```

### Patrón 3: Validación Rápida
```
1. Validar con deepseek-v4-flash (rápido y barato)
2. Si pasa, continuar
3. Si falla, escalar
```

---

## MONITOREO

### Señales de Desperdicio
- Usar `qwen3.7-max` para tareas simples
- Repetir el mismo modelo 3+ veces sin éxito
- No resumir contexto antes de enviar
- No usar fallback cuando modelo falla

### Señales de Buen Uso
- Tareas simples con tier free
- Código con tier coding
- Escalamiento solo cuando necesario
- Fallback funciona correctamente

---

## VALIDACIÓN

```bash
~/harnesses/scripts/ocmodels-allowed-check
```
