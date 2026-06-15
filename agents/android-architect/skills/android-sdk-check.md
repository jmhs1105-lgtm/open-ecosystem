# Skill: android-sdk-check
## Agente dueño: Android Architect Agent
## Categoría: Android / Environment
## Objetivo: Verificar que el Android SDK está correctamente instalado.
## Pasos seguros
1. `echo $ANDROID_HOME`.
2. `ls $ANDROID_HOME/platform-tools/adb`.
3. `ls $ANDROID_HOME/build-tools/`.
4. `$ANDROID_HOME/cmdline-tools/latest/bin/sdkmanager --list | head -20`.
## Estado: adapted
