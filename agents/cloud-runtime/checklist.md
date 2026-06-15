# Cloud Runtime Agent — Checklist

## Antes de trabajar
- [ ] Revisar `package.json` del servicio.
- [ ] Confirmar variables de entorno necesarias.
- [ ] Revisar documentación de Railway/VPS.

## Durante ejecución
- [ ] Crear Dockerfile ligero.
- [ ] Crear docker-compose si aplica.
- [ ] Agregar health endpoint.
- [ ] Configurar restart policy.
- [ ] No exponer secrets.

## Después de terminar
- [ ] Validar Docker build local.
- [ ] Probar health check.
- [ ] Preparar checklist de deploy.

## Validaciones
- [ ] Imagen construye sin errores.
- [ ] Health check responde 200.
- [ ] Logs configurados.

## Señales de error
- Docker build falla.
- Health check no responde.
- Variables de entorno faltantes.

## Rollback básico
- No hacer deploy.
- Si ya se desplegó, restaurar imagen anterior.
- Revisar logs.
