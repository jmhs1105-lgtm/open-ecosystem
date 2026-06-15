# Skill: opencode-config-backup

## Fuente
- Tipo: Adaptado de prácticas de backup del ecosistema
- Licencia: Uso interno

## Adaptación para OpenCode
Crea backups seguros de la configuración de OpenCode antes de cualquier cambio.

## Agente dueño
Security & Recovery Agent

## Categoría
Security / Recovery

## Objetivo
Crear snapshots de `opencode.json` y configs relacionadas antes de modificaciones.

## Cuándo usarla
- Antes de modificar `~/.config/opencode/opencode.json`.
- Antes de cambiar MCPs.
- Antes de actualizar providers.
- Antes de importar configs desde Kali.

## Pasos seguros
1. Identificar archivo(s) a respaldar.
2. Generar timestamp: `date +%Y%m%d-%H%M%S`.
3. Crear backup: `cp opencode.json opencode.json.bak.$TIMESTAMP`.
4. Verificar que el backup existe y no está vacío.
5. Registrar en log si aplica.

## Comandos permitidos
- `cp` para crear backups.
- `date` para timestamps.
- `ls` para verificar backups.
- `du -sh` para tamaño.

## Comandos que requieren confirmación
- `rm` de backups antiguos (NUNCA borrar sin confirmar).

## Archivos permitidos
- `~/.config/opencode/opencode.json` (lectura + backup).
- `~/harnesses/backups/` (escritura).

## Archivos prohibidos
- No modificar el archivo original durante el backup.

## Validación
- Backup existe.
- Backup tiene el mismo tamaño que el original.
- Backup es JSON válido (si es JSON).

## Rollback
- Restaurar desde backup: `cp opencode.json.bak.TIMESTAMP opencode.json`.

## Riesgos
- Backup en ubicación incorrecta.
- Backup corrupto (verificar después de crear).

## Estado
adapted
