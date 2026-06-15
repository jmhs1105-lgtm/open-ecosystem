# AI Provider Agent — Skills

## Skills principales
- OpenRouter.
- Gemini.
- Groq.
- Cerebras.
- Ollama.
- LM Studio.
- Estrategias de fallback.
- Costos y límites.

## Skills secundarias
- NVIDIA APIs.
- Embeddings.
- Modelos locales.
- Quantization.

## Tecnologías que domina
- OpenAI-compatible APIs.
- Ollama CLI.
- `.env` management.
- REST APIs.

## Comandos seguros permitidos
- `ollama list`
- `ollama pull <model>` (con confirmación)
- `curl` a endpoints de modelos (sin exponer key).

## Comandos peligrosos que requieren confirmación
- `ollama run` con modelos grandes.
- Cualquier instalación de modelos > 1GB.
- Cambio de config de OpenCode providers.
