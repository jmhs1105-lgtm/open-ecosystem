# Skill: snapshot-before-change

## Fuente
- Tipo: Adaptado de prácticas de backup del ecosistema
- Licencia: Uso interno

## Adaptación para OpenCode
Crea un snapshot completo del ecosistema antes de cambios críticos.

## Agente dueño
Security & Recovery Agent

## Categoría
Security / Backup

## Objetivo
Tener un punto de restauración completo antes de cualquier cambio significativo.

## Cuándo usarla
- Antes de migrar desde Kali.
- Antes de refactor grande.
- Antes de cambiar estructura de carpetas.
- Antes de actualizar múltiples agentes.
- Antes de instalar software nuevo.

## Pasos seguros
1. Ejecutar `~/harnesses/scripts/ocsave`.
2. Verificar que el snapshot se creó en `~/harnesses/backups/`.
3. Documentar qué se va a cambiar.
4. Proceder con el cambio.
5. Si falla: restaurar desde snapshot.

## Comandos permitidos
- `~/harnesses/scripts/ocsave`.
- `ls ~/harnesses/backups/`.
- `du -sh ~/harnesses/backups/snapshot-*`.

## Comandos que requieren confirmación
- `rm` de snapshots (NUNCA borrar sin confirmar).

## Archivos permitidos
- `~/harnesses/backups/` (escritura).

## Validación
- Snapshot creado.
- Snapshot tiene tamaño > 0.
- Snapshot contiene los archivos esperados.

## Rollback
- Restaurar desde snapshot: `cp -r snapshot-*/* ~/harnesses/`.

## Riesgos
- Snapshot incompleto.
- Snapshot corrupto.
- Espacio en disco insuficiente.

## Estado
adapted
