# Skill: model-fallback-routing

## Fuente
- Tipo: Adaptado de patrones de routing de OpenRouter y documentación de proveedores
- Licencia: MIT / Uso interno

## Adaptación para OpenCode
Define estrategias de fallback cuando un proveedor de IA falla o alcanza límites.

## Agente dueño
AI Provider Agent

## Categoría
AI Providers / Strategy

## Objetivo
Garantizar que las peticiones de IA siempre se resuelvan, incluso si un proveedor falla.

## Cuándo usarla
- Cuando un proveedor no responde.
- Cuando se alcanza rate limit.
- Cuando la calidad de respuesta es insuficiente.
- Al diseñar la estrategia de proveedores del ecosistema.

## Estrategia de fallback

```
Petición → Proveedor primario
  ├─ Éxito → retornar
  ├─ Rate limit → fallback 1
  ├─ Error → fallback 2
  └─ Todos fallan → error controlado
```

## Prioridades sugeridas

| Tarea | Primario | Fallback 1 | Fallback 2 |
|---|---|---|---|
| Código | OpenRouter (Claude) | Groq (Llama) | Ollama local |
| Chat | Groq (rápido) | OpenRouter | Ollama local |
| Investigación | Gemini (contexto largo) | OpenRouter | Groq |
| Imágenes | OpenRouter (DALL-E) | — | — |
| Local | Ollama | — | — |

## Pasos seguros
1. Intentar proveedor primario.
2. Si falla: registrar error.
3. Intentar fallback 1.
4. Si falla: registrar error.
5. Intentar fallback 2.
6. Si todos fallan: informar al usuario.
7. Registrar intentos en log.

## Comandos permitidos
- Lectura de `.env` (solo verificar keys, no imprimir).
- `curl` a endpoints de modelos (sin exponer keys).

## Validación
- Al menos un proveedor responde.
- Fallback funciona correctamente.
- Errores registrados.

## Riesgos
- Todos los proveedores caídos.
- Keys inválidas en todos los proveedores.
- Costos inesperados en proveedores de pago.

## Estado
adapted
