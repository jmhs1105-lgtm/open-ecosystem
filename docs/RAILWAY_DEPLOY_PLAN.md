# Railway Deploy Plan

## Services to Deploy

| Service | Type | Port | Scaling |
|---|---|---|---|
| Backend API | Web Service | 3000 | Min 1 |
| Telegram Bot | Worker | — | Min 1 |
| n8n | Web Service | 5678 | Min 1 |

## Setup

```bash
# Install Railway CLI
npm install -g @railway/cli

# Login
railway login

# Link project
railway link

# Deploy
railway up
```

## Project Structure (Railway)

```
railway-deploy/
├── railway.json          # Railway config
├── backend-api/
│   ├── Dockerfile
│   └── .dockerignore
├── telegram-bot/
│   ├── Dockerfile
│   └── .dockerignore
└── n8n/
    └── docker-compose.yml
```

## Dockerfile (Backend API)

```dockerfile
FROM node:22-alpine
WORKDIR /app
COPY package*.json ./
RUN npm ci --production
COPY src/ ./src/
EXPOSE 3000
CMD ["node", "src/index.js"]
```

## Environment Variables (Railway)

All from `.env.example`, set in Railway dashboard:
```
INSFORGE_BASE_URL
INSFORGE_API_KEY
TELEGRAM_BOT_TOKEN
WHATSAPP_API_TOKEN
N8N_WEBHOOK_URL
SENDGRID_API_KEY
```

## Health Check

Railway checks `GET /api/v1/health`. Must return 200 with `{ status: "ok" }`.

## Rollback

```bash
railway rollback    # Revert to previous deploy
```

## Domains

Railway auto-assigns `*.up.railway.app`. Custom domain via Railway dashboard.

## Pricing

- Starter: $5/month (512MB RAM, 1 vCPU)
- Pro: $20/month (2GB RAM, 2 vCPU)
