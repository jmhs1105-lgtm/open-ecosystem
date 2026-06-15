# Skill: app-installed-not-visible-debug
## Agente dueño: Android Architect Agent
## Categoría: Android / Debug
## Objetivo: Diagnosticar por qué una app instalada no aparece en el launcher.
## Causas comunes
1. Sin Activity con `MAIN` + `LAUNCHER` intent filter.
2. App solo con Activity que requiere datos (deep link).
3. App instalada en perfil de trabajo.
4. App deshabilitada.
## Pasos seguros
1. `adb shell dumpsys package <pkg> | grep -A 5 "MAIN"`.
2. Verificar AndroidManifest.xml tiene intent-filter correcto.
3. Verificar que la Activity no requiere datos extras.
## Estado: adapted
