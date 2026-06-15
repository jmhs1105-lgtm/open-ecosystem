# Railway / VPS — 24/7 Deployment Plan

## Objective
Run Telegram bots, WhatsApp bots, and API workers 24/7 with auto-restart, health checks, and secure env vars.

## Platform Options

| Option | Cost | Best For |
|---|---|---|
| Railway | Free tier available | Bots, lightweight APIs, workers |
| VPS (Hetzner/ DigitalOcean) | ~$4-6/mo | Full control, multiple services |
| Fly.io | Free tier limited | Small apps, global regions |

## Services to Deploy

### 1. Telegram Bot
- **Runtime**: Node.js + Telegraf/grammY
- **Type**: Webhook or Polling
- **Port**: 3000 (webhook)
- **Health**: `GET /health` → `{"status": "ok"}`

### 2. WhatsApp Bot
- **Runtime**: Node.js
- **Type**: Webhook
- **Port**: 3001
- **Health**: `GET /health`

### 3. API Worker
- **Runtime**: Node.js / Python
- **Type**: Background worker
- **Health**: Heartbeat every 60s

## Railway Setup

```bash
# Install Railway CLI
npm install -g @railway/cli

# Login
railway login

# Init project
cd ~/harnesses/projects/railway-deploy
railway init

# Link existing project
railway link <project-id>

# Deploy
railway up
```

### railway.toml
```toml
[deploy]
healthcheckPath = "/health"
healthcheckTimeout = 300
restartPolicyType = "always"
restartPolicyMaxRetries = 5

[service]
name = "telegram-bot"
```

## VPS Setup (Alternative)

```bash
# Using Docker Compose (recommended)
mkdir -p ~/harnesses/projects/vps-deploy
cd ~/harnesses/projects/vps-deploy

# docker-compose.yml
```

### docker-compose.yml
```yaml
version: '3.8'
services:
  telegram-bot:
    build: ./telegram-bot
    restart: always
    env_file: .env
    ports:
      - "3000:3000"
    healthcheck:
      test: ["CMD", "curl", "-f", "http://localhost:3000/health"]
      interval: 30s
      timeout: 10s
      retries: 3

  whatsapp-bot:
    build: ./whatsapp-bot
    restart: always
    env_file: .env
    ports:
      - "3001:3001"
    healthcheck:
      test: ["CMD", "curl", "-f", "http://localhost:3001/health"]
      interval: 30s
      timeout: 10s
      retries: 3

  worker:
    build: ./worker
    restart: always
    env_file: .env
    depends_on:
      - telegram-bot
```

## Environment Variables Template

```env
# ~/harnesses/projects/railway-deploy/.env.example

# Telegram
TELEGRAM_BOT_TOKEN=
TELEGRAM_WEBHOOK_URL=

# WhatsApp
WHATSAPP_API_KEY=
WHATSAPP_WEBHOOK_VERIFY_TOKEN=

# InsForge
INSFORGE_API_KEY=
INSFORGE_URL=

# General
NODE_ENV=production
LOG_LEVEL=info
PORT=3000
```

## Health Check System

### Endpoint (every service)
```javascript
// GET /health
app.get('/health', (req, res) => {
  res.json({
    status: 'ok',
    service: process.env.SERVICE_NAME,
    uptime: process.uptime(),
    timestamp: new Date().toISOString()
  });
});
```

### Monitoring Script
```bash
# ~/harnesses/scripts/ochealth
#!/usr/bin/env bash
# Check all deployed services health

SERVICES=(
  "telegram:https://telegram-bot.railway.app/health"
  "whatsapp:https://whatsapp-bot.railway.app/health"
  "worker:https://worker.railway.app/health"
)

for svc in "${SERVICES[@]}"; do
  name="${svc%%:*}"
  url="${svc##*:}"
  status=$(curl -s -o /dev/null -w "%{http_code}" "$url" 2>/dev/null)
  if [ "$status" = "200" ]; then
    echo "✅ $name: healthy ($status)"
  else
    echo "❌ $name: unhealthy ($status)"
  fi
done
```

## Restart Policy

| Failure | Action |
|---|---|
| Crash (exit code != 0) | Auto-restart (up to 5 retries) |
| Health check fails 3x | Restart service |
| OOM | Restart with increased memory |
| Deploy failure | Rollback to last working deploy |
| Network timeout | Retry with backoff |

## Logs

```bash
# Railway logs
railway logs --service telegram-bot
railway logs --service whatsapp-bot
railway logs --service worker

# VPS logs (Docker)
docker compose logs -f telegram-bot
docker compose logs -f whatsapp-bot
docker compose logs -f worker
```

## Pre-Deploy Checklist

- [ ] Bot tokens configured in Railway/VPS env vars (not in code)
- [ ] Webhook URLs set correctly
- [ ] Health check endpoints implemented
- [ ] `.env` NEVER committed to git
- [ ] `.gitignore` includes `.env`, `node_modules/`, `*.log`
- [ ] `npm ci` installs cleanly
- [ ] `npm test` passes
- [ ] Railway CLI installed
- [ ] Confirm before any `railway up`

## Security Rules

- ❌ No deploy without user confirmation
- ❌ Never print bot tokens or API keys
- ❌ Never commit .env files
- ✅ Use Railway/VPS env vars for secrets
- ✅ Health check endpoints don't expose secrets
- ✅ Rate limiting on all webhook endpoints

## Deployment Commands (Manual Only)

```bash
# Step 1: Verify env vars
railway variables list

# Step 2: Dry run
railway up --dry-run

# Step 3: Deploy (requires confirmation)
railway up

# Step 4: Verify
railway logs --service telegram-bot --tail 20
curl https://telegram-bot.railway.app/health
```
