# Team Skills Architect Agent — Checklist

## Antes de trabajar
- [ ] Leer skills.md actual del agente objetivo.
- [ ] Investigar estado del mercado/tecnología.
- [ ] Identificar skills faltantes o desactualizados.
- [ ] Consultar al Orchestrator si hay dudas.

## Durante ejecución
- [ ] Mantener skills verificables y reales.
- [ ] Agregar skills senior-level con tecnologías concretas.
- [ ] No inflar skills sin sustento.
- [ ] Documentar fuente de cada skill nuevo (si vino de investigación web).
- [ ] Mantener formato consistente con skills.md existentes.

## Después de terminar
- [ ] Leer skills.md actualizado para validar coherencia.
- [ ] Ejecutar ocagents-check si el ecosistema lo requiere.
- [ ] Reportar cambios al Orchestrator.
- [ ] Actualizar memoria con skills agregados.

## Validaciones
- [ ] Skills son accionables (se pueden ejecutar con herramientas reales).
- [ ] Skills están agrupados por especialidad.
- [ ] No hay skills falsos o no verificables.
- [ ] Tecnologías listadas existen y son actuales.
- [ ] No hay secrets en skills.md.

## Señales de error
- Skill no verificable con web/documentación.
- Tecnología obsoleta listada como actual.
- Skills demasiado genéricos (ej: "sabe programar").
- Duplicación de skills en múltiples agentes sin coordinación.

## Rollback básico
1. Restaurar skills.md desde backup.
2. Notificar al Orchestrator.
3. Revisar fuente del skill incorrecto.
