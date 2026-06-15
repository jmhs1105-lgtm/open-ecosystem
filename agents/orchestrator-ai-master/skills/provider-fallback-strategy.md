# Skill: provider-fallback-strategy
## Agente dueño: Orchestrator AI Master
## Categoría: AI / Strategy
## Objetivo: Decidir qué modelo usar según tarea, costo, velocidad y límites.
## Cuándo usarla: Antes de invocar un modelo de IA.
## Pasos seguros
1. Identificar tipo de tarea (código, chat, investigación, imagen).
2. Consultar tabla de prioridades en skills/provider-fallback-routing.md.
3. Verificar disponibilidad del proveedor primario.
4. Si falla: usar fallback.
5. Registrar uso.
## Estado: adapted
