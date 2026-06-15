# Operations 24/7

## Overview

Bots, workers, and APIs must run 24/7 regardless of whether the MacBook is on or off.

## Architecture

```
Railway / VPS (24/7)
├── Backend API (Express 5)
├── Telegram Bot Worker
├── WhatsApp Bot Worker
├── n8n (self-hosted)
└── Scheduled Jobs (cron)

InsForge Cloud (always on)
├── Database (Postgres)
├── Auth
├── Storage
└── Realtime

MacBook (development)
├── OpenCode CLI
├── VS Code
├── Local testing
└── Git operations
```

## Components 24/7

| Component | Runtime | Restart | Health Check |
|---|---|---|---|
| Backend API | Railway | Auto | `GET /api/v1/health` |
| Telegram Bot | Railway (webhook) | Auto | Bot responds to /start |
| WhatsApp Bot | Railway (webhook) | Auto | Webhook verification |
| n8n | Railway | Auto | `GET /healthz` |
| InsForge DB | InsForge Cloud | Managed | Connection check |
| InsForge Auth | InsForge Cloud | Managed | Login test |

## Health Checks

```bash
# Backend API
curl https://api.example.com/api/v1/health

# n8n
curl https://n8n.example.com/healthz

# Telegram Bot
curl https://api.telegram.org/bot$TOKEN/getMe

# InsForge
curl -H "apikey: $INSFORGE_API_KEY" https://pmyjdb5h.us-east.insforge.app/rest/v1/
```

## Monitoring

| Signal | Tool | Alert |
|---|---|---|
| API down | n8n ping | Email + Telegram |
| High error rate | InsForge errors table | Email alert |
| Bot unresponsive | n8n health check | Telegram to owner |
| InsForge disconnected | Backend health | Log + retry |
| Cost spike | api_usage table | Daily report |

## Auto-Restart

Railway auto-restarts on crash. For VPS:

```yaml
# docker-compose.yml
services:
  api:
    restart: unless-stopped
    healthcheck:
      test: ["CMD", "curl", "-f", "http://localhost:3000/api/v1/health"]
      interval: 30s
      timeout: 10s
      retries: 3
```

## Backup Strategy

| Data | Backup Method | Frequency |
|---|---|---|
| InsForge DB | InsForge snapshots | Daily |
| opencode.json | `ocbackup` script | Before edits |
| .env files | Bitwarden | Manual |
| Code | GitHub | Every commit |

## Disaster Recovery

1. DB corruption → Restore from InsForge snapshot
2. Railway down → Deploy to VPS backup
3. Token leaked → Rotate immediately via Bitwarden
4. Config broken → Restore opencode.json from backup
5. Bot banned → Switch to alternate number/bot
