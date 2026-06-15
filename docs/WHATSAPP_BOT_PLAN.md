# WhatsApp Bot Plan

## Architecture

```
User → WhatsApp → Meta Cloud API → Webhook → Backend API → InsForge DB
                                                       → n8n Webhook
                                                       → AI Classification
```

## Stack

| Layer | Technology |
|---|---|
| Framework | Baileys (Node.js) or Meta Cloud API |
| Host | Railway / VPS |
| DB | InsForge (bot_messages, leads) |
| Auth | WhatsApp Business API Token |
| AI | Groq/Gemini via OpenRouter |
| Templates | Meta-approved message templates |

## Flow Design

```
1. User sends message to WhatsApp number
2. Webhook receives message at /api/v1/webhook/whatsapp
3. Validate signature (X-Hub-Signature-256)
4. Save to bot_messages (inbound)
5. Classify intent via AI
6. Execute handler:
   - New lead → capture info → save to leads
   - Returning lead → check status → follow-up
   - Support → route to human if needed
   - Unknown → offer menu options
7. Save response to bot_messages (outbound)
8. Send via WhatsApp Cloud API
```

## Conversation State Machine

```
States: NEW → QUALIFYING → OFFER_SENT → NEGOTIATING → CONVERTED / LOST

NEW: First message → identify intent
QUALIFYING: Ask qualifying questions (3 max)
OFFER_SENT: Wait for response (24h timeout)
NEGOTIATING: Handle questions → adjust offer
CONVERTED: Confirm + celebrate + next steps
LOST: Save reason → no more messages
```

## Lead Qualification

| Question | Purpose |
|---|---|
| "¿Qué tipo de oferta buscas?" | Category |
| "¿Tienes experiencia previa?" | Level |
| "¿Cuál es tu presupuesto?" | Budget |
| "¿Cómo prefieres que te contacte?" | Channel |

Score: 1-3 points per answer. Score ≥ 5 → qualified lead.

## Message Templates (Meta-Approved)

| Template | Use |
|---|---|
| `welcome_message` | First contact |
| `offer_details` | Send offer info |
| `follow_up_24h` | No response after 24h |
| `conversion_confirmation` | Lead converted |
| `human_handoff` | Transfer to human |

## Compliance Rules

1. Business hours only (no 3am messages)
2. Opt-out: "STOP" keyword removes from list
3. No unsolicited marketing
4. Respect WhatsApp policies
5. Template messages pre-approved by Meta
6. No more than 1 follow-up if no response

## InsForge Tables Used

- `bot_messages` — All conversations
- `leads` — Lead capture, state machine
- `users` — WhatsApp contact storage
- `tasks` — Follow-up tasks
- `notifications` — Human handoff alerts
- `errors` — Error tracking

## Environment Variables

```
WHATSAPP_API_TOKEN=
WHATSAPP_PHONE_NUMBER_ID=
WHATSAPP_VERIFY_TOKEN=
WHATSAPP_BUSINESS_ID=
```

## Human Handoff

1. User requests human: keyword "hablar con alguien"
2. Lead score < 3 or specific intent: auto-handoff
3. Create task in InsForge for human agent
4. Send notification via n8n/email
5. Save state: human_handoff_pending
