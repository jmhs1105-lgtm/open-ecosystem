# InsForge Agent — Checklist

## Antes de trabajar
- [ ] Confirmar project ID y URL.
- [ ] Verificar que `.env` existe y está protegido.
- [ ] Revisar esquema actual si existe.

## Durante ejecución
- [ ] Diseñar tablas con IDs, timestamps, relaciones.
- [ ] Agregar RLS por defecto.
- [ ] No hardcodear secrets.
- [ ] Documentar cada tabla.

## Después de terminar
- [ ] Validar SQL.
- [ ] Actualizar `.env.example`.
- [ ] Actualizar documentación.

## Validaciones
- [ ] SQL ejecuta sin errores de sintaxis.
- [ ] Políticas RLS coherentes.
- [ ] No secrets en código.

## Señales de error
- Sintaxis SQL inválida.
- Política RLS bloquea acceso legítimo.
- Conexión falla.

## Rollback básico
- No ejecutar DELETE/DROP.
- Revertir esquema desde backup.
- Contactar a Security & Recovery Agent.
