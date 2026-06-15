# Skill: debug-build-validation
## Agente dueño: Android Architect Agent
## Categoría: Android / Build
## Objetivo: Validar que el debug build es correcto antes de instalar.
## Pasos seguros
1. `./gradlew assembleDebug`.
2. Verificar que APK se genera en `app/build/outputs/apk/debug/`.
3. Verificar tamaño del APK.
4. Instalar en dispositivo.
5. Verificar que la app inicia sin crash.
## Estado: adapted
