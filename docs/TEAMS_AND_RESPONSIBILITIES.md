# Teams and Responsibilities

| # | Team | Agent | Responsibility | Tools | Key Files |
|---|---|---|---|---|---|
| 0 | Orchestrator | Orchestrator AI Master | Fases, coordination, final validation | opencode.json | ORCHESTRATOR_MASTER_PLAN.md |
| 1 | Security | Security & Recovery | Bitwarden, .env, .gitignore, backups | ocbackup, ocrestore | SECURITY_SECRETS_POLICY.md |
| 2 | Core Architecture | Software Architect | Project structure, stack decisions, roadmap | docs/ | ARCHITECTURE.md |
| 3 | Dev Environment | MCP Operations | VS Code, extensions, .vscode/, MCP config | opencode.json | DEV_ENVIRONMENT_VSCODE.md |
| 4 | Automation & Ops | Cloud Runtime | n8n, webhooks, Railway, VPS, workers | n8n, railway CLI | OPERATIONS_24_7.md |
| 5 | Backend & Memory | InsForge, Backend API | InsForge DB, Auth, Storage, logs, memory | InsForge CLI, Express | INSFORGE_BACKEND_PLAN.md |
| 6 | Bots | Telegram Bot, WhatsApp Bot | Telegram, WhatsApp, affiliates, leads | Telegraf, Baileys | TELEGRAM_BOT_PLAN.md |
| 7 | Mobile | Android Architect, React Native Expo | RN, Expo, TypeScript, Android, ADB | Expo CLI, Android SDK | MOBILE_APP_PLAN.md |
| 8 | Design | Team Skills Architect | Penpot, ui-ux-pro-max, UI/UX, components | Penpot | DESIGN_WORKFLOW_PENPOT.md |
| 9 | Documentation | Research Agent | AppFlowy, docs, knowledge base, prompts | AppFlowy, Markdown | APPFLOWY_WORKSPACE_PLAN.md |
| 10 | QA | Backend API | ESLint, Prettier, TypeScript, tests, build | ESLint, Prettier, Jest | QA_VALIDATION_PLAN.md |
| 11 | Email | Cloud Runtime | SendGrid, templates, notifications | SendGrid API | SENDGRID_EMAIL_PLAN.md |
| 12 | Research | Research Agent | GitHub research, official docs, yt-dlp | yt-dlp | OPEN_SOURCE_RESEARCH.md |

## Validation rules

- Each team validates before marking tasks complete
- No deploy, push, or production change without approval
- Security team must review any .env or secret changes
- Orchestrator must approve phase transitions
