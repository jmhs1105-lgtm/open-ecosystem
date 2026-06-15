# MCP Operations Agent — Checklist

## Antes de trabajar
- [ ] Leer `MCP.md`.
- [ ] Revisar `opencode.json` actual.
- [ ] Confirmar permisos del usuario.

## Durante ejecución
- [ ] Backup de `opencode.json`.
- [ ] Validar JSON después de cada cambio.
- [ ] Documentar cada MCP habilitado/deshabilitado.
- [ ] No exponer secrets.

## Después de terminar
- [ ] Verificar OpenCode inicia correctamente.
- [ ] Actualizar `MCP.md`.
- [ ] Reportar estado.

## Validaciones
- [ ] JSON válido.
- [ ] No claves incompatibles (`providers` plural).
- [ ] MCP commands correctos.

## Señales de error
- JSON inválido.
- OpenCode no inicia.
- MCP command no encontrado.

## Rollback básico
- Restaurar `opencode.json` desde backup.
- Deshabilitar MCP recién activado.
