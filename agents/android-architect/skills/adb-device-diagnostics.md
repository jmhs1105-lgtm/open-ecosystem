# Skill: adb-device-diagnostics

## Fuente
- Tipo: Adaptado de documentación oficial de Android SDK y ADB
- Licencia: Apache 2.0

## Adaptación para OpenCode
Diagnostica la conexión entre Mac y dispositivo Android (Redmi) usando ADB.

## Agente dueño
Android Architect Agent

## Categoría
Android / Diagnostics

## Objetivo
Verificar que ADB detecta el dispositivo, que tiene autorización y que puede comunicarse.

## Cuándo usarla
- Cuando el dispositivo no aparece en `adb devices`.
- Cuando la app se instala pero no se ve.
- Cuando hay errores de permisos.
- Antes de instalar APK.
- Después de conectar un dispositivo nuevo.

## Pasos seguros
1. Verificar `ANDROID_HOME` configurado.
2. Verificar que `adb` existe en `$ANDROID_HOME/platform-tools/`.
3. Ejecutar `adb devices`.
4. Si lista vacía:
   - Verificar cable USB.
   - Verificar depuración USB activada en el teléfono.
   - Verificar autorización RSA en el teléfono.
   - Ejecutar `adb kill-server && adb start-server`.
5. Si aparece `unauthorized`:
   - Pedir al usuario que acepte la autorización RSA en el teléfono.
6. Si aparece `device`:
   - Ejecutar `adb shell getprop ro.build.version.sdk` para verificar versión.
7. Reportar estado.

## Comandos permitidos
- `adb devices`.
- `adb shell getprop ro.build.version.sdk`.
- `adb kill-server`.
- `adb start-server`.
- `echo $ANDROID_HOME`.

## Comandos que requieren confirmación
- `adb install`.
- `adb uninstall`.
- `adb shell` con comandos que modifican el dispositivo.

## Archivos permitidos
- Ninguno (este skill es diagnóstico de dispositivo).

## Validación
- `adb devices` muestra el dispositivo.
- El dispositivo tiene estado `device` (no `unauthorized`).
- `ANDROID_HOME` está configurado.

## Rollback
- `adb kill-server` para resetear conexión.

## Riesgos
- Dispositivo no detectado por cable dañado.
- Autorización RSA rechazada.
- Versión de ADB incompatible con el dispositivo.

## Estado
adapted
