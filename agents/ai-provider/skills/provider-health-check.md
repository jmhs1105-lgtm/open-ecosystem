# Skill: provider-health-check

## Fuente
- Tipo: Adaptado de documentación de OpenRouter, Groq, Gemini, Ollama
- Licencia: MIT / Apache 2.0 / Uso interno

## Adaptación para OpenCode
Verifica que los proveedores de IA configurados estén accesibles y funcionales.

## Agente dueño
AI Provider Agent

## Categoría
AI Providers / Health

## Objetivo
Diagnosticar el estado de cada proveedor de IA: accesible, API key válida, modelos disponibles.

## Cuándo usarla
- Antes de usar un proveedor por primera vez.
- Cuando un proveedor no responde.
- Después de cambiar API keys.
- En revisiones periódicas de salud.
- Antes de crear fallback strategy.

## Pasos seguros
1. Listar proveedores configurados en `.env` (sin imprimir keys).
2. Para cada proveedor:
   - Verificar que la variable de entorno existe.
   - Hacer un test de conectividad (sin exponer key).
   - Verificar modelos disponibles si es posible.
3. Para Ollama local:
   - Verificar que `ollama` está instalado.
   - Ejecutar `ollama list`.
   - Verificar que el servidor responde en `localhost:11434`.
4. Reportar estado de cada proveedor.

## Comandos permitidos
- `ollama list`.
- `curl -s http://localhost:11434/api/tags` (Ollama local).
- `echo $VARIABLE_NAME` (sin imprimir valor).
- `test -n "$VARIABLE_NAME" && echo "set" || echo "not set"`.

## Comandos que requieren confirmación
- `ollama pull <model>` (descarga grande).
- Modificar `.env`.

## Archivos permitidos
- `.env` (solo verificar existencia de variables, no leer contenido).

## Validación
- Cada proveedor reporta su estado.
- Variables de entorno existen.
- Ollama local responde si está configurado.

## Rollback
- Cambiar proveedor default al anterior.

## Riesgos
- API key inválida → proveedor no responde.
- Rate limit excedido → respuestas lentas.
- Ollama no instalado → fallback necesario.

## Estado
adapted
