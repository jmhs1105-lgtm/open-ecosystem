# Orchestrator AI Master Agent — Memory

## Qué debe recordar del ecosistema
- OpenCode 1.16.2 en macOS 26.3 Intel.
- Working directory: `/Users/admin/harnesses`.
- 13 agentes reales coordinados por este orquestador.
- MacBook es el workstation principal; Kali es lab/reference.
- Playwright MCP activo con Chromium dedicado.
- InsForge MCP activo con proyecto `opencode-ecosystem`.
- Android SDK, Java 17, Gradle, ADB disponibles.
- Expo v56.1.15 disponible vía npx.

## Qué proyectos toca
- `~/harnesses/projects/android/`
- `~/harnesses/projects/expo-app/`
- `~/harnesses/projects/bots/`
- `~/harnesses/projects/insforge/`
- `~/harnesses/projects/railway-deploy/`

## Qué dependencias tiene
- Todos los agentes operativos reportan a este orquestador.
- `Security & Recovery Agent` protege todos los cambios.
- `Software Architect Agent` define estructura general.
- `AI Provider Agent` gestiona proveedores de modelos.

## Qué decisiones técnicas ya están definidas
- No copiar `opencode.json` desde Kali.
- No copiar `providers` antiguo.
- Todo import desde Kali pasa por staging + audit + safe-copy.
- Backups antes de cambios críticos.
- `.env` nunca impreso ni commiteado.
- No deploy sin permiso.
