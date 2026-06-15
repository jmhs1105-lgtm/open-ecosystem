# AI Provider Agent — Memory

## Qué debe recordar del ecosistema
- Ollama planeada como provider local.
- OpenRouter, Gemini, Groq, Cerebras como providers cloud.
- OpenCode actualmente usa `provider` singular (no `providers`).
- LM Studio como alternativa local.

## Qué proyectos toca
- Todos los proyectos que consuman IA.

## Qué dependencias tiene
- `software-architect` — decisión de arquitectura.
- `security-recovery` — protección de API keys.
- `orchestrator-ai-master` — aprobación de cambios.

## Qué decisiones técnicas ya están definidas
- API keys en `.env`.
- Local-first cuando sea posible (Ollama).
- Fallback cloud para tareas críticas.
