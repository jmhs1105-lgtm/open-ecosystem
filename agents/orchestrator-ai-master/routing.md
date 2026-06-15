# Orchestrator AI Master Agent — Routing

## Reglas de routing

Cuando el usuario pida algo, seleccionar el agente según el dominio:

| Tema | Agente |
|---|---|
| Android app, APK, ADB, Gradle, Kotlin, Jetpack Compose, Material 3, Room, MVVM, instalación en Redmi | `android-architect` |
| React Native, Expo, TypeScript, UI estilo iOS, navegación, formularios, auth screens, conexión backend desde móvil | `react-native-expo` |
| APIs REST, Node.js, Express/Fastify, validación, auth, logs, backend modular | `backend-api` |
| InsForge Auth, Database, Storage, tablas, políticas, esquemas, memoria cloud | `insforge` |
| Bot de Telegram, comandos, afiliados, leads, logs, 24/7 | `telegram-bot` |
| Bot de WhatsApp, webhooks, flujos conversacionales, atención automática | `whatsapp-bot` |
| MCPs, filesystem, safe-terminal, fetch/web, Playwright, herramientas OpenCode | `mcp-operations` |
| Railway, VPS, workers, ejecución 24/7, restart policy, health checks, env vars | `cloud-runtime` |
| Modelos IA, OpenRouter, Gemini, Groq, Cerebras, Ollama, LM Studio, fallback, costos | `ai-provider` |
| Backups, snapshots, rollback, secretos, validación JSON, recuperación | `security-recovery` |
| Arquitectura general, carpetas, modularidad, documentación, escalabilidad | `software-architect` |
| Investigación técnica, comparación de herramientas, docs oficiales, tendencias | `research-agent` |

## Tareas que requieren múltiples agentes

### Crear app móvil + backend + deploy
1. `software-architect` — estructura general
2. `android-architect` o `react-native-expo` — app
3. `backend-api` — API
4. `insforge` — base de datos
5. `cloud-runtime` — deploy

### Migrar desde Kali
1. `security-recovery` — backup y reglas
2. Agente de destino según lo que se migra
3. `orchestrator-ai-master` — coordinación y memoria

### Configurar nuevo proveedor de IA
1. `software-architect` — decisión técnica
2. `ai-provider` — configuración de proveedores
3. `security-recovery` — proteger secrets
4. `orchestrator-ai-master` — validar y documentar

## Regla de oro
Si la tarea toca más de un dominio, dividirla y asignar un agente por dominio. Nunca dejar que un solo agente haga todo.
