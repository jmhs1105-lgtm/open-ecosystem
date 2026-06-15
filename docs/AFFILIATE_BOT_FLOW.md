# Affiliate Bot Flow

## Overview

Multi-platform affiliate automation: capture leads via Telegram/WhatsApp, qualify with AI, match to offers, track commissions, and follow up automatically.

## User Journey

```
1. Discover (ad, referral, organic)
2. Land (Telegram bot or WhatsApp number)
3. Onboard: /start or first message
4. Qualify: intent + questions
5. Match: find best offer
6. Convert: lead takes action via referral link
7. Track: commission logged in InsForge
8. Nurture: follow-up, new offers, feedback
```

## Flow Diagram

```
┌──────────┐    ┌──────────┐    ┌──────────┐
│ Telegram │    │ WhatsApp │    │   Web    │
│   Bot    │    │   Bot    │    │  (future)│
└────┬─────┘    └────┬─────┘    └────┬─────┘
     │               │               │
     └───────────────┼───────────────┘
                     │
              ┌──────▼──────┐
              │  Backend API │
              │  /webhook/*  │
              └──────┬──────┘
                     │
         ┌───────────┼───────────┐
         │           │           │
   ┌─────▼──┐  ┌────▼───┐  ┌───▼────┐
   │InsForge│  │  AI    │  │  n8n   │
   │  DB    │  │Intent  │  │Auto    │
   │        │  │Classify│  │Flow    │
   └────────┘  └────────┘  └────────┘
```

## Lead States

| State | Trigger | Next Action |
|---|---|---|
| `new` | First message | Classify intent |
| `qualifying` | Intent = affiliate | Ask 3 questions |
| `qualified` | Score ≥ 5 | Match to offers |
| `offer_sent` | Offer matched | Wait for response |
| `converted` | Click/action confirmed | Track commission |
| `lost` | No response / opt-out | Save reason |
| `nurture` | Converted previously | New offers, feedback |

## Offer Matching

```
Input: Lead category + budget + experience level
  ↓
Query: Offers table (future) filtered by category
  ↓
AI: Rank by conversion probability
  ↓
Output: Top 3 offers for lead
```

## Commission Tracking

```
1. Lead clicks referral link (unique affiliate_code)
2. Action completed (purchase, signup, install)
3. Webhook from affiliate network → Backend API
4. Update leads table: status = converted, commission = $X
5. Notify via n8n → email to admin
6. Update api_usage for cost tracking
```

## Tables Used

| Table | Purpose |
|---|---|
| `leads` | Lead lifecycle, score, status, commission |
| `bot_messages` | Full conversation history |
| `tasks` | Follow-up reminders |
| `notifications` | Conversion alerts |
| `api_usage` | AI classification costs |

## AI Classification

```
Message → Groq/Gemini → Intent + Confidence
Input: "Quiero ser afiliado"
Output: { intent: "affiliate_info", confidence: 0.95, entities: {} }
```

## Follow-Up Automation

| Trigger | Delay | Message |
|---|---|---|
| Lead qualified | 1h | Offer details |
| No response | 24h | "¿Viste la oferta?" |
| No response 2 | 48h | "Última oportunidad" |
| Converted | 7d | Ask for feedback |
| Nurture | 30d | New offers available |

## Environment Variables

```
AFFILIATE_CODE_PREFIX=OC
AFFILIATE_TRACKING_URL=
AFFILIATE_COMMISSION_DEFAULT=0.10
```
