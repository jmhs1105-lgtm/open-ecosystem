# Skill: android-preview-build
## Agente dueño: React Native Expo Agent
## Categoría: Expo / Build
## Objetivo: Generar preview build para Android.
## Pasos seguros
1. `npx expo prebuild --platform android`.
2. `cd android && ./gradlew assembleDebug`.
3. APK generado en `android/app/build/outputs/apk/debug/`.
4. Instalar con `adb install`.
## Comandos que requieren confirmación: `npx eas build`.
## Estado: adapted
