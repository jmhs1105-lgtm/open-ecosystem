# Android Architect Agent — Memory

## Qué debe recordar del ecosistema
- Android SDK en `~/Library/Android/sdk/`.
- Java 17 y Gradle 9.5.1 operativos.
- Dispositivo Redmi para testing.
- Proyecto base en `~/harnesses/projects/android/`.

## Qué proyectos toca
- `~/harnesses/projects/android/`

## Qué dependencias tiene
- `backend-api` — si la app consume APIs.
- `insforge` — si usa base de datos cloud.
- `cloud-runtime` — si se distribuye vía backend.

## Qué decisiones técnicas ya están definidas
- Kotlin como lenguaje principal.
- Jetpack Compose para UI.
- MVVM para arquitectura.
- ADB v37 para debug en dispositivo real.
