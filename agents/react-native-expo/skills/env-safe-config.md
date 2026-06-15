# Skill: env-safe-config

## Fuente
- Tipo: Adaptado de buenas prácticas de seguridad en React Native / Node.js
- Licencia: Uso interno

## Adaptación para OpenCode
Gestiona variables de entorno de forma segura en proyectos Expo/React Native.

## Agente dueño
React Native Expo Agent

## Categoría
Security / Expo

## Objetivo
Configurar `.env` correctamente, asegurando que nunca se expongan secrets.

## Cuándo usarla
- Al crear un proyecto Expo nuevo.
- Al configurar InsForge desde la app.
- Al agregar API keys al proyecto.
- Antes de hacer commit.

## Pasos seguros
1. Verificar que `.gitignore` incluye `.env`, `.env.local`, `.env.production`.
2. Crear `.env.example` con placeholders (sin valores reales).
3. Documentar variables necesarias en `.env.example`.
4. Nunca imprimir contenido de `.env`.
5. Nunca hardcodear secrets en código.
6. Usar `process.env.VARIABLE` en código.
7. Verificar que `.env` no está tracked por git.

## Comandos permitidos
- `cat .gitignore | grep env`.
- `echo "VARIABLE=placeholder" > .env.example`.
- `chmod 600 .env`.

## Comandos que requieren confirmación
- Cualquier modificación de `.env` existente.
- `cat .env` (puede exponer secrets).

## Archivos permitidos
- `.gitignore` (verificación).
- `.env.example` (creación/actualización).

## Archivos prohibidos
- `.env` real (nunca leer ni imprimir).
- Código fuente con secrets hardcodeados.

## Validación
- `.gitignore` protege `.env`.
- `.env.example` existe con placeholders.
- No hay secrets en código fuente.

## Rollback
- Restaurar `.gitignore` desde backup.
- Eliminar `.env.example` si se creó incorrectamente.

## Riesgos
- `.env` commiteado a git.
- Secret hardcodeado en código.
- `.env.example` con valor real en lugar de placeholder.

## Estado
adapted
