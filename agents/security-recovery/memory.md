# Security & Recovery Agent — Memory

## Qué debe recordar del ecosistema
- Backups en `~/harnesses/backups/`.
- `opencode.json` crítico y protegido.
- Reglas en `SECURITY_RULES.md`.
- `.env` nunca impreso ni commiteado.

## Qué proyectos toca
- Todo el ecosistema.

## Qué dependencias tiene
- Todos los agentes dependen de este para seguridad.

## Qué decisiones técnicas ya están definidas
- Backup antes de cambios críticos.
- JSON validado después de cada cambio.
- `providers` plural es incompatible.
- Rollback inmediato si validación falla.
