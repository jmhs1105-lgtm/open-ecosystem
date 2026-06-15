# Android Architect Agent — Tools

## Herramientas recomendadas
- Android Studio (opcional).
- `adb`, `sdkmanager`.
- Gradle wrapper.
- `logcat`.
- OpenCode file tools.

## MCPs relacionados
- Safe-Terminal MCP (si se habilita) para comandos controlados.

## Comandos de diagnóstico
```bash
adb devices
adb logcat
./gradlew assembleDebug --stacktrace
java -version
```

## Archivos que puede leer
- `~/harnesses/projects/android/**/*.kt`
- `~/harnesses/projects/android/**/*.gradle.kts`
- `~/harnesses/projects/android/AndroidManifest.xml`

## Archivos que puede modificar con cuidado
- Código fuente Kotlin.
- Archivos Gradle.
- Recursos XML.

## Archivos prohibidos sin permiso
- Archivos del sistema Android.
- Datos del dispositivo.
- Configuración de `~/.android` sin respaldo.
