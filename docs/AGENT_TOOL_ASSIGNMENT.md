# Agent — Tool Assignment

| Agent | Primary Model | CLI Tools | SDKs/Frameworks | MCPs |
|---|---|---|---|---|
| Orchestrator AI Master | mimo-v2.5-pro | ocagents-check, ocharness-check | — | all (read) |
| Software Architect | qwen3.7-max | — | — | filesystem |
| Security & Recovery | qwen3.7-max | ocbackup, ocrestore, gitleaks | Bitwarden CLI | — |
| MCP Operations | mimo-v2.5-pro | ocmcp | — | all (config) |
| Backend API | kimi-k2.7-code | npm, node | Express 5, Telegraf | filesystem |
| InsForge | mimo-v2.5-pro | InsForge CLI | @insforge/sdk | insforge |
| Telegram Bot | kimi-k2.7-code | npm, node | Telegraf | — |
| WhatsApp Bot | kimi-k2.7-code | npm, node | Baileys | — |
| Cloud Runtime | deepseek-v4-pro | railway, docker, npm | — | — |
| Android Architect | kimi-k2.7-code | gradle, adb, kotlin | Jetpack Compose | filesystem |
| React Native Expo | kimi-k2.7-code | expo, npm, npx | React Native, Expo | filesystem |
| AI Provider | mimo-v2.5-pro | — | OpenRouter, Groq, Gemini | fetch-web |
| Research Agent | glm-5.1 | yt-dlp | — | fetch-web, playwright |
| Team Skills Architect | qwen3.7-max | — | Penpot, ui-ux-pro-max | filesystem |

## Model Routing

See `opencode/MODEL_ROUTING.md` for full routing rules.
Each agent defaults to its primary model, with fast and escalation fallbacks.
