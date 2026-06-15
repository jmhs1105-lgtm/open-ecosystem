# Backend API Agent — Checklist

## Antes de trabajar
- [ ] Revisar estructura actual del backend.
- [ ] Confirmar variables de entorno disponibles.
- [ ] Revisar `package.json`.

## Durante ejecución
- [ ] Separar rutas, controladores y servicios.
- [ ] Validar request body.
- [ ] Manejar errores con códigos HTTP correctos.
- [ ] No hardcodear secrets.

## Después de terminar
- [ ] Ejecutar tests si existen.
- [ ] Validar endpoint con curl.
- [ ] Documentar API.

## Validaciones
- [ ] Servidor inicia sin errores.
- [ ] Endpoints responden correctamente.
- [ ] No hay secrets en código.

## Señales de error
- Puerto ocupado.
- Error de conexión a base de datos.
- Middleware crashea.

## Rollback básico
- Restaurar `package.json`.
- Revertir cambios en endpoints.
- Reiniciar servidor.
