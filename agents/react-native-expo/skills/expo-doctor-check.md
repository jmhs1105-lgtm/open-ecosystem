# Skill: expo-doctor-check

## Fuente
- Tipo: Adaptado de documentación oficial de Expo
- Licencia: MIT

## Adaptación para OpenCode
Diagnostica problemas en proyectos Expo/React Native.

## Agente dueño
React Native Expo Agent

## Categoría
Expo / Diagnostics

## Objetivo
Verificar que el proyecto Expo está correctamente configurado y sin conflictos.

## Cuándo usarla
- Después de `npm install`.
- Cuando Expo no inicia.
- Cuando hay errores de dependencias.
- Antes de hacer build.

## Pasos seguros
1. Ejecutar `npx expo doctor`.
2. Revisar warnings y errores.
3. Si hay conflictos de dependencias: ejecutar `npx expo install --fix`.
4. Verificar `app.json` o `app.config.js`.
5. Verificar que `node_modules` está actualizado.

## Comandos permitidos
- `npx expo doctor`.
- `npx expo install --fix`.
- `npm ls` (verificar dependencias).

## Comandos que requieren confirmación
- `npx expo prebuild --clean`.
- `rm -rf node_modules && npm install`.

## Estado
adapted
