# Skill: safety-gate

## Fuente
- Tipo: Adaptado de reglas de seguridad del ecosistema
- Licencia: Uso interno

## Adaptación para OpenCode
Este skill detecta acciones peligrosas y exige confirmación antes de ejecutarlas.

## Agente dueño
Orchestrator AI Master

## Categoría
Core / Security

## Objetivo
Prevenir acciones destructivas, exposición de secretos y cambios irreversibles.

## Cuándo usarla
- Antes de cualquier `rm`, `mv`, `cp` sobre configs.
- Antes de `git push`, `git reset`.
- Antes de deploy (`railway up`, `docker compose up`).
- Antes de modificar `opencode.json`.
- Antes de instalar software.
- Antes de borrar archivos.
- Antes de ejecutar scripts descargados.
- Antes de mostrar contenido de `.env`.

## Señales de peligro
- Comando contiene `rm -rf`.
- Comando contiene `sudo`.
- Comando contiene `curl | bash`.
- Comando contiene `git push`.
- Comando contiene `npm publish`.
- Archivo es `.env` o contiene secrets.
- Archivo es `opencode.json`.
- Acción es irreversible.

## Pasos seguros
1. Detectar si la acción es peligrosa.
2. Si es peligrosa: PAUSAR.
3. Explicar al usuario qué se va a hacer.
4. Explicar riesgos.
5. Pedir confirmación explícita.
6. Si el usuario dice no: CANCELAR.
7. Si el usuario dice sí: crear backup, ejecutar, validar.

## Comandos permitidos
- Lectura de cualquier archivo.
- `ocdoctor`, `ocharness-check`, `ocagents-check`.

## Comandos que requieren confirmación
- Cualquier comando de escritura/borrado.
- Cualquier deploy.
- Cualquier instalación.

## Validación
- El usuario confirmó la acción.
- Se creó backup antes.
- Se validó después.

## Rollback
- Restaurar desde backup.
- Informar al usuario.

## Riesgos
- Si el safety-gate falla, se ejecuta una acción destructiva.
- Si el usuario confirma sin entender, hay riesgo.

## Estado
adapted
