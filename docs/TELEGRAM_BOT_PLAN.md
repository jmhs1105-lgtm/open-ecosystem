# Telegram Bot Plan

## Architecture

```
User → Telegram API → Webhook/Polling → Backend API → InsForge DB
                                                    → n8n Webhook
                                                    → AI Classification
```

## Stack

| Layer | Technology |
|---|---|
| Framework | Telegraf (Node.js) |
| Host | Railway / VPS |
| DB | InsForge (bot_messages, leads) |
| Auth | Bot Token (env) |
| AI | Groq/Gemini via OpenRouter |
| Automation | n8n webhooks |

## Commands

| Command | Handler | Description |
|---|---|---|
| `/start` | `startHandler` | Welcome + registration |
| `/help` | `helpHandler` | Command list |
| `/affiliate` | `affiliateHandler` | Affiliate program info |
| `/offers` | `offersHandler` | Available offers |
| `/status` | `statusHandler` | User account status |
| `/referral` | `referralHandler` | Referral link |

## Conversation Flow

```
1. /start → register user in InsForge (id, username, chat_id)
2. /affiliate → show program → capture interest → generate link
3. Natural message → classify intent (AI) → route to handler
4. Lead qualified → save to leads table → notify n8n
5. n8n processes → follow-up message → update lead status
```

## Intent Classification

| Intent | Keywords | Action |
|---|---|---|
| `affiliate_info` | "ganar, dinero, afiliado, comisión" | Show program |
| `support` | "ayuda, problema, error, no funciona" | Route to support |
| `offers` | "ofertas, productos, disponible" | List offers |
| `referral` | "invitar, link, referido" | Generate link |
| `greeting` | "hola, buenas, hey" | Welcome back |
| `unknown` | — | Suggest /help |

## Data Flow

```
Message received
  → Save to bot_messages (inbound)
  → Classify intent (AI)
  → Execute handler
  → Save response to bot_messages (outbound)
  → If lead: save/update leads table
  → If error: log to errors + agents_logs
```

## InsForge Tables Used

- `bot_messages` — All conversations
- `leads` — Lead capture and scoring
- `users` — User registration
- `tasks` — Follow-up tasks
- `errors` — Error tracking

## Environment Variables

```
TELEGRAM_BOT_TOKEN=
TELEGRAM_WEBHOOK_URL=
```

## Modes

| Mode | Use | Config |
|---|---|---|
| Polling | Dev / Testing | `bot.launch()` |
| Webhook | Production 24/7 | `bot.startWebhook()` |

## Error Handling

1. API rate limit → exponential backoff
2. Message too long → split
3. Network error → retry 3x
4. Intent fails → fallback to /help
5. InsForge fails → queue locally + retry

## Deployment (Railway)

```
1. Set env vars in Railway
2. Set webhook URL to Railway domain
3. Health check endpoint: GET /api/v1/health
4. Auto-restart on crash
5. Log to InsForge agents_logs
```
