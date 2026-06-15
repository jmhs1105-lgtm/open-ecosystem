# Orchestrator AI Master Agent — Checklist

## Antes de trabajar
- [ ] Leer `PROJECT_MEMORY.md` para contexto.
- [ ] Leer `STATUS.md` para estado actual.
- [ ] Leer `SECURITY_RULES.md`.
- [ ] Entender la petición del usuario.
- [ ] Clasificar la tarea por dominio.
- [ ] Seleccionar agentes adecuados.

## Durante ejecución
- [ ] Crear snapshot si el cambio es crítico.
- [ ] Dividir la tarea en fases pequeñas.
- [ ] Delegar a agentes específicos.
- [ ] Validar cada fase antes de continuar.
- [ ] Documentar decisiones en memoria.
- [ ] Preguntar ante la duda.

## Después de terminar
- [ ] Crear backup final.
- [ ] Actualizar `STATUS.md`.
- [ ] Actualizar `PROJECT_MEMORY.md` si aplica.
- [ ] Ejecutar `ocdoctor` y `ocharness-check`.
- [ ] Reportar resumen al usuario.

## Validaciones
- [ ] JSON válido si se tocó config.
- [ ] Scripts ejecutables si se crearon.
- [ ] No secretos impresos.
- [ ] No archivos vacíos sin sentido.
- [ ] No carpetas huérfanas.

## Señales de error
- Validación falla.
- Agente reporta problema no resuelto.
- Cambio rompe ecosistema existente.
- Usuario no confirmó una acción crítica.

## Rollback básico
1. Detener operaciones.
2. Explicar el fallo.
3. Restaurar desde último snapshot.
4. Informar al usuario.
5. Proponer alternativa segura.
