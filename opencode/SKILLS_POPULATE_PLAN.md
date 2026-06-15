# Skills Population Plan

## Estado actual
- 15 directorios en `~/harnesses/skills/`
- Cada uno tiene solo `README.md` placeholder
- Contenido real: **0 skills**

## Objetivo
Poblar cada skill con contenido útil, verificable y seguro.

## Estructura de cada SKILL.md

```
~/harnesses/skills/<categoria>/
├── SKILL.md         # Flujo de trabajo, comandos, ejemplos
├── README.md        # Descripción (ya existe)
```

Cada SKILL.md debe incluir:
- **Nombre**: claro y descriptivo
- **Descripción**: qué se logra con este skill
- **Prerrequisitos**: herramientas necesarias
- **Workflow**: pasos ordenados
- **Comandos**: comandos seguros y documentados
- **Validaciones**: cómo verificar que funcionó
- **Errores comunes**: troubleshooting
- **Referencias**: agentes relacionados

## Reglas estrictas
- ❌ Nada de secrets, tokens o API keys en los skills
- ❌ Nada de comandos destructivos sin advertencia
- ❌ Nada de paths hardcodeados que solo sirvan en Kali
- ✅ Skills validados antes de activar
- ✅ Skills separados por dominio
- ✅ Skills cargados on-demand (no todos a la vez)

## Prioridades

| Prioridad | Categoría | Agente relacionado | Dificultad |
|---|---|---|---|
| 1 | android | Android Architect | media |
| 2 | react-native-expo | React Native Expo Agent | media |
| 3 | backend | Backend API Agent | media |
| 4 | insforge | InsForge Agent | baja |
| 5 | bots | Telegram Bot + WhatsApp Bot | media |
| 6 | railway | Cloud Runtime Agent | baja |
| 7 | vps | Cloud Runtime Agent | baja |
| 8 | mcp | MCP Operations Agent | baja |
| 9 | ai-providers | AI Provider Agent | baja |
| 10 | security-defensive | Security & Recovery Agent | media |
| 11 | testing | Todos los agentes | media |
| 12 | observability | Cloud Runtime Agent | baja |
| 13 | automation | Orchestrator AI Master | media |
| 14 | affiliate-marketing | Telegram Bot Agent | baja |
| 15 | docs | Software Architect + Research | baja |

## Orden de ejecución sugerido
1. Poblar skills de infraestructura (mcp, railway, vps) — son simples y estables
2. Poblar skills de desarrollo (android, expo, backend) — los más usados
3. Poblar skills de IA (ai-providers, insforge)
4. Poblar skills de operación (bots, security, observability)
5. Poblar skills especializados (affiliate, automation, docs)
6. Actualizar `SKILLS.md` y ejecutar validación

## Validación después de poblar
```bash
~/harnesses/scripts/ocdoctor
~/harnesses/scripts/ocharness-check
# skills se cargan on-demand, validar al cargar cada uno
```

## Riesgos
| Riesgo | Mitigación |
|---|---|
| Skill con comandos destructivos | Revisión antes de escribir |
| Skill con secrets | No incluir valores, solo placeholders |
| Skill desactualizado | Fecha de creación, revisión periódica |
| Skill que no funciona | Prerrequisitos claros y validaciones |

## Próximo paso
El Team Skills Architect Agent + Research Agent deben investigar el contenido de cada skill y generarlo con base en documentación oficial verificable.
