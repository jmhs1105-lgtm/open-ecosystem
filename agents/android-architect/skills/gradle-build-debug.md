# Skill: gradle-build-debug

## Fuente
- Tipo: Adaptado de documentación oficial de Gradle y Android SDK
- Licencia: Apache 2.0

## Adaptación para OpenCode
Depura errores de compilación Gradle en proyectos Android.

## Agente dueño
Android Architect Agent

## Categoría
Android / Build

## Objetivo
Diagnosticar y resolver errores de compilación Gradle.

## Cuándo usarla
- Cuando `./gradlew assembleDebug` falla.
- Cuando hay errores de dependencias.
- Cuando hay conflictos de versiones.
- Cuando el build es lento.

## Pasos seguros
1. Ejecutar `./gradlew assembleDebug --stacktrace`.
2. Leer el error completo.
3. Categorizar el error:
   - Error de dependencia → revisar `build.gradle`.
   - Error de Kotlin → revisar código fuente.
   - Error de SDK → revisar `local.properties`.
   - Error de Gradle → revisar versión.
4. Aplicar fix.
5. Re-ejecutar build.

## Comandos permitidos
- `./gradlew assembleDebug --stacktrace`.
- `./gradlew clean`.
- `cat build.gradle.kts`.
- `cat settings.gradle.kts`.

## Comandos que requieren confirmación
- `./gradlew assembleRelease`.
- Modificar `build.gradle.kts` crítico.

## Estado
adapted
