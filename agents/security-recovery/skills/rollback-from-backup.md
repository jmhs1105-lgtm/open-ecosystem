# Skill: rollback-from-backup

## Fuente
- Tipo: Adaptado de protocolo de rollback del ecosistema
- Licencia: Uso interno

## Adaptación para OpenCode
Restaura el ecosistema desde un backup cuando algo sale mal.

## Agente dueño
Security & Recovery Agent

## Categoría
Security / Recovery

## Objetivo
Recuperar el sistema de forma rápida y segura después de un fallo.

## Cuándo usarla
- Cuando una validación falla después de un cambio.
- Cuando OpenCode no inicia.
- Cuando `opencode.json` está corrupto.
- Cuando un agente rompe el ecosistema.
- Cuando el usuario pide revertir.

## Pasos seguros
1. DETENER todas las operaciones.
2. Explicar qué falló.
3. Listar backups disponibles: `ls -lt ~/harnesses/backups/`.
4. Seleccionar el backup más reciente antes del fallo.
5. Pedir confirmación al usuario.
6. Restaurar: `cp -r backup/* destino/`.
7. Validar: `ocdoctor`, `ocharness-check`.
8. Informar al usuario.

## Comandos permitidos
- `ls -lt ~/harnesses/backups/`.
- `cp -r` para restaurar.
- `~/harnesses/scripts/ocdoctor`.
- `~/harnesses/scripts/ocharness-check`.

## Comandos que requieren confirmación
- `cp -r` de backup (la restauración misma).
- `rm` de archivos corruptos.

## Archivos permitidos
- `~/harnesses/backups/` (lectura).
- Cualquier archivo del ecosistema (escritura durante restauración).

## Validación
- Restauración completada.
- `ocdoctor` pasa.
- `ocharness-check` pasa.
- OpenCode inicia correctamente.

## Riesgos
- Backup seleccionado incorrecto.
- Backup corrupto.
- Pérdida de datos posteriores al backup.

## Estado
adapted
