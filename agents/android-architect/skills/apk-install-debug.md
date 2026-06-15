# Skill: apk-install-debug
## Agente dueño: Android Architect Agent
## Categoría: Android / Install
## Objetivo: Instalar APK en dispositivo de forma segura.
## Pasos seguros
1. Verificar dispositivo conectado: `adb devices`.
2. Verificar que el APK existe.
3. Ejecutar `adb install -r app-debug.apk`.
4. Verificar instalación: `adb shell pm list packages | grep <pkg>`.
## Comandos que requieren confirmación: `adb install`, `adb uninstall`.
## Estado: adapted
