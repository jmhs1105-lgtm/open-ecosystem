# Architecture — OpenCode Ecosystem

## Overview

Multi-agent AI development platform with InsForge backend, 24/7 runtime, and cross-platform mobile.

## Layers

```
┌─────────────────────────────────┐
│         Mobile & Web            │
│  React Native / Expo / Android  │
├─────────────────────────────────┤
│          Bot Layer              │
│   Telegram / WhatsApp / n8n     │
├─────────────────────────────────┤
│         API Gateway             │
│     Express 5 / Fastify         │
├─────────────────────────────────┤
│         InsForge Cloud          │
│  Auth / DB / Storage / Memory   │
├─────────────────────────────────┤
│      Automation & Runtime       │
│   Railway / VPS / Workers       │
├─────────────────────────────────┤
│        AI Orchestration         │
│    OpenCode + 14 Agents         │
└─────────────────────────────────┘
```

## Tech Stack

| Layer | Technology |
|---|---|
| AI Orchestration | OpenCode CLI + 14 agents |
| API | Node.js + Express 5 |
| Backend/DB | InsForge (Postgres + REST) |
| Auth | InsForge Auth (JWT) |
| Storage | InsForge Storage (S3) |
| Mobile | React Native + Expo + TypeScript |
| Android | Kotlin + Jetpack Compose |
| Bots | Telegraf (Telegram), Baileys (WhatsApp) |
| Automation | n8n |
| Runtime | Railway / VPS |
| Email | SendGrid |
| Design | Penpot + ui-ux-pro-max |
| Docs | AppFlowy + Markdown |
| Secrets | Bitwarden + .env |
| CI/QA | ESLint + Prettier + TypeScript |

## Data Flow

```
User → Bot/App → API Gateway → InsForge DB
                     ↓
                InsForge Memory
                     ↓
              Agent State / Logs
                     ↓
              n8n Workflows → Alerts/Email
```

## Agent Architecture

14 specialized agents coordinated by Orchestrator AI Master.
Each agent has: agent.md, skills.md, checklist.md, tools.md, memory.md
