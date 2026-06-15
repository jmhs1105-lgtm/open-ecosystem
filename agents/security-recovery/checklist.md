# Security & Recovery Agent — Checklist

## Antes de trabajar
- [ ] Identificar qué config o archivo se va a cambiar.
- [ ] Evaluar riesgo.
- [ ] Preparar backup.

## Durante ejecución
- [ ] Crear snapshot con timestamp.
- [ ] Validar JSON si aplica.
- [ ] No imprimir secrets.
- [ ] Documentar cada acción.

## Después de terminar
- [ ] Confirmar backup creado.
- [ ] Validar que el sistema sigue funcionando.
- [ ] Reportar estado.

## Validaciones
- [ ] JSON válido.
- [ ] No `providers` antiguo.
- [ ] `.env` con permisos 600.
- [ ] No secrets en logs.

## Señales de error
- Backup falla.
- JSON inválido.
- Secret expuesto.
- Permisos incorrectos.

## Rollback básico
1. Detener operaciones.
2. Explicar fallo.
3. Restaurar desde último backup.
4. Validar sistema.
5. Reportar.
