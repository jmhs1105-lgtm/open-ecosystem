# n8n Integration Plan

## Overview

n8n serves as the automation layer: connecting bots, InsForge, email, and external services through visual workflows.

**Deployment**: Self-hosted (Railway/VPS) or Cloud.

## Architecture

```
n8n Worker
├── Webhook Trigger ← Backend API
├── InsForge Node → Database
├── AI Node → Groq/Gemini
├── HTTP Request → External APIs
├── Email Node → SendGrid
├── Telegram Node → Bot messages
├── WhatsApp Node → Cloud API
└── Schedule Trigger → Jobs
```

## 8 Core Workflows

| # | Workflow | Trigger | Actions |
|---|---|---|---|
| 1 | Telegram Lead Capture | Webhook | Classify → Save lead → Response |
| 2 | WhatsApp Message Router | Webhook | Classify → Qualify → Assign task |
| 3 | Error Alert System | Error log insert | Notify admin → Create task |
| 4 | New Project Setup | Schedule/Manual | Create tasks → Assign agent → Log |
| 5 | Daily Report | Schedule (daily) | Query metrics → Send email |
| 6 | Affiliate Lead Follow-Up | Lead status change | Schedule messages → Track |
| 7 | Payment Confirmed | Webhook | Activate access → Send welcome |
| 8 | New User Welcome | User created | Send email → Create notification |

## Workflow: Telegram Lead → InsForge → Response

```
1. TRIGGER: Webhook (POST /api/v1/webhook/telegram)
2. IF: Message text exists
3. AI Node: Classify intent (Groq)
4. SWITCH: Intent
   ├── affiliate_info → Save lead → Generate link → Response
   ├── support → Log issue → Create task
   ├── offers → Query offers → Format response
   └── default → Suggest /help
5. InsForge: Insert bot_message
6. Telegram Node: Send response
7. IF: Lead created → Trigger Workflow #6
```

## Workflow: Error Alert System

```
1. TRIGGER: Check errors table (every 5 min)
2. FILTER: New errors (created_at > last check)
3. IF: error_type = 'critical'
   ├── Email Node: Send alert to admin
   ├── Telegram Node: Notify owner
   └── InsForge: Create task
4. IF: error_type = 'warning'
   └── Log to system_events
```

## Workflow: Daily Report

```
1. TRIGGER: Schedule (every day 08:00 UTC)
2. Query InsForge:
   ├── New leads (last 24h)
   ├── Conversions
   ├── API costs
   ├── Errors
   └── Active agents
3. Format: Markdown → HTML
4. SendGrid Node: Send email to admin
```

## Environment Variables

```
N8N_WEBHOOK_URL=
N8N_ENCRYPTION_KEY=
N8N_BASIC_AUTH_USER=
N8N_BASIC_AUTH_PASSWORD=
```

## Security

- Basic auth on n8n dashboard
- Webhook URLs with secret tokens
- n8n runs in same VPC as Backend API
- Encrypted credentials store
- No production data in sandbox

## Self-Hosted Setup (Railway)

```
Service: n8n
Image: n8nio/n8n
Port: 5678
Volumes:
  - /home/node/.n8n (persistent)
Env:
  - N8N_ENCRYPTION_KEY
  - DB_TYPE=postgresdb
  - DB_POSTGRESDB_DATABASE
  - DB_POSTGRESDB_HOST
  - DB_POSTGRESDB_USER
  - DB_POSTGRESDB_PASSWORD
```
