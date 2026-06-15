# Skill: opencode-json-validation

## Fuente
- Tipo: Adaptado de prácticas de validación del ecosistema
- Licencia: Uso interno

## Adaptación para OpenCode
Valida que `opencode.json` sea JSON válido y no contenga claves incompatibles.

## Agente dueño
Security & Recovery Agent

## Categoría
Security / Validation

## Objetivo
Detectar JSON inválido, claves incompatibles (`providers` plural) y configuraciones rotas.

## Cuándo usarla
- Después de modificar `opencode.json`.
- Después de importar configs.
- Antes de reiniciar OpenCode.
- Cuando OpenCode no inicia.

## Pasos seguros
1. Verificar que el archivo existe.
2. Ejecutar `python3 -m json.tool opencode.json`.
3. Si falla: JSON inválido → restaurar backup.
4. Si pasa: buscar `providers` (plural) con `grep`.
5. Si encuentra `providers`: incompatible → corregir.
6. Verificar que las rutas de MCP son válidas.

## Comandos permitidos
- `python3 -m json.tool ~/.config/opencode/opencode.json`.
- `grep '"providers"' ~/.config/opencode/opencode.json`.
- `cat` para leer el archivo.

## Comandos que requieren confirmación
- Cualquier modificación del archivo.

## Archivos permitidos
- `~/.config/opencode/opencode.json` (solo lectura y validación).

## Archivos prohibidos
- No modificar durante validación.

## Validación
- JSON es sintácticamente válido.
- No contiene `providers` (plural).
- MCPs tienen `command` válido.
- Rutas existen.

## Rollback
- Restaurar desde `opencode.json.bak.*`.

## Riesgos
- Validación pasa pero config es funcionalmente incorrecta.
- Backup no existe cuando se necesita.

## Estado
adapted
