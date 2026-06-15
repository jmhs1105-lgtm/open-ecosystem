# Skill: Telegram Affiliate Bot

## Objective

Build a Telegram bot that captures, qualifies, and converts affiliate leads with AI-powered intent classification and InsForge integration.

## When to Use

- Building a Telegram bot from scratch
- Adding affiliate features to existing bot
- Connecting Telegram to InsForge + n8n

## When NOT to Use

- Sending unsolicited messages
- Spamming users
- Bypassing Telegram Bot API limits

## Agent Responsible

**Telegram Bot Agent**

## Stack

- **Framework**: Telegraf (Node.js)
- **AI**: Groq/Gemini for intent classification
- **DB**: InsForge (bot_messages, leads)
- **Automation**: n8n webhooks

## Commands

| Command | Handler |
|---|---|
| /start | Welcome + registration |
| /help | Command list |
| /affiliate | Affiliate program |
| /offers | Available offers |
| /status | Account status |
| /referral | Referral link |

## Flow

```
Message → Classify intent → Save to DB → Handler → Response
                                              → Notify n8n if lead
```

## Validation

- [ ] Bot token stored in .env (never code)
- [ ] All messages logged to bot_messages
- [ ] Leads saved to InsForge
- [ ] No spam: working hours only
- [ ] Opt-out: /stop command
- [ ] Error handling with retry
