# Skill: logcat-error-analysis

## Fuente
- Tipo: Adaptado de documentación oficial de Android Debug Bridge
- Licencia: Apache 2.0

## Adaptación para OpenCode
Analiza logs de Android para diagnosticar errores de apps.

## Agente dueño
Android Architect Agent

## Categoría
Android / Debug

## Objetivo
Extraer y analizar logs de logcat para encontrar la causa raíz de errores.

## Cuándo usarla
- Cuando la app crashea.
- Cuando la app no responde.
- Cuando hay errores de runtime.
- Cuando se necesita entender el comportamiento de la app.

## Pasos seguros
1. Conectar dispositivo: `adb devices`.
2. Limpiar logcat: `adb logcat -c`.
3. Reproducir el error en el dispositivo.
4. Capturar logs: `adb logcat -d | grep -i "error\|exception\|fatal"`.
5. Analizar el stack trace.
6. Identificar la causa raíz.

## Comandos permitidos
- `adb logcat -d`.
- `adb logcat -c`.
- `adb logcat -d | grep -i "error"`.
- `adb shell dumpsys crash`.

## Comandos que requieren confirmación
- `adb logcat -f <file>` (escribir a archivo).

## Estado
adapted
