# Android Architect Agent — Checklist

## Antes de trabajar
- [ ] Verificar `ANDROID_HOME`.
- [ ] Confirmar versión de Java y Gradle.
- [ ] Revisar estado del proyecto.
- [ ] Verificar dispositivo conectado si aplica.

## Durante ejecución
- [ ] Revisar build.gradle y settings.gradle.
- [ ] Ejecutar build incremental primero.
- [ ] Revisar logs de error detallados.
- [ ] No instalar APK sin confirmación.

## Después de terminar
- [ ] Validar que el build pasa.
- [ ] Confirmar APK generado si aplica.
- [ ] Documentar cambios en memoria.
- [ ] Reportar estado al usuario.

## Validaciones
- [ ] Proyecto compila sin errores.
- [ ] No hay warnings críticos.
- [ ] Código sigue convenciones Kotlin.

## Señales de error
- Build falla con errores de Gradle.
- ADB no detecta dispositivo.
- App crashea en tiempo de ejecución.
- Permisos faltantes.

## Rollback básico
- Restaurar archivos desde git o backup.
- Revertir cambios en build.gradle.
- Limpiar y reconstruir.
