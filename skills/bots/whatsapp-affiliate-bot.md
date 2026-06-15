# Skill: WhatsApp Affiliate Bot

## Objective

Build a WhatsApp bot using Meta Cloud API or Baileys for lead capture, qualification, and conversion with state machine and InsForge integration.

## When to Use

- Building WhatsApp automation
- Lead capture via WhatsApp
- Customer support automation
- Affiliate marketing via WhatsApp

## When NOT to Use

- Unsolicited messaging (violates WhatsApp policy)
- Mass broadcasting without templates
- 24/7 message sending (respect business hours)

## Agent Responsible

**WhatsApp Bot Agent**

## Stack

- **Framework**: Baileys or Meta Cloud API
- **AI**: Groq/Gemini for classification
- **DB**: InsForge (bot_messages, leads)
- **Templates**: Meta-approved message templates

## State Machine

```
NEW → QUALIFYING → OFFER_SENT → NEGOTIATING → CONVERTED / LOST
```

## Lead Qualification

3 questions max: category, experience, budget
Score ≥ 5 → qualified lead

## Compliance

- Business hours only
- Opt-out: "STOP" keyword
- Template messages pre-approved
- No more than 1 follow-up without response

## Validation

- [ ] Token stored in .env
- [ ] Webhook validates signature
- [ ] Messages logged to bot_messages
- [ ] Opt-out respected immediately
- [ ] No messages outside hours
- [ ] Human handoff available
