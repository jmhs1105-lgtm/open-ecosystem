# Skill: no-delete-policy

## Fuente
- Tipo: Regla fundamental del ecosistema
- Licencia: Uso interno

## Adaptación para OpenCode
Política estricta: nunca borrar archivos sin confirmación explícita y backup.

## Agente dueño
Security & Recovery Agent

## Categoría
Security / Policy

## Objetivo
Prevenir pérdida accidental de datos por borrado sin confirmación.

## Reglas absolutas
1. NUNCA ejecutar `rm -rf` sin confirmación.
2. NUNCA borrar backups.
3. NUNCA borrar archivos de config sin backup.
4. NUNCA borrar código sin confirmación del usuario.
5. SIEMPRE crear backup antes de borrar.
6. SIEMPRE documentar qué se borró y por qué.

## Acciones prohibidas
- `rm -rf ~/harnesses/`
- `rm ~/.config/opencode/opencode.json`
- `rm -rf ~/harnesses/backups/`
- `rm` de cualquier archivo sin preguntar

## Alternativas seguras
- En vez de `rm`: mover a `/tmp/trash/`.
- En vez de sobreescribir: crear versión nueva.
- En vez de borrar: marcar como deprecated.

## Estado
adapted
