# Skill: kali-to-mac-migration-control
## Agente dueño: Orchestrator AI Master
## Categoría: Security / Migration
## Objetivo: Controlar importaciones desde Kali sin copiar configs rotas.
## Cuándo usarla: Cuando el usuario pide migrar desde Kali.
## Pasos seguros
1. Ejecutar `~/harnesses/scripts/kali-import-audit` en staging.
2. Revisar reporte.
3. Si hay bloqueos: resolver.
4. Ejecutar `~/harnesses/scripts/kali-import-safe-copy` por categoría.
5. Validar después de cada copia.
## Reglas: Nunca copiar opencode.json, providers, .env, node_modules.
## Estado: adapted
