# Skill: n8n Workflows

## Objective

Design and manage automation workflows with n8n: connect bots, InsForge, email, and external services through visual automation.

## When to Use

- Automating repetitive tasks (lead follow-up, daily reports)
- Connecting bots to InsForge database
- Setting up error alerts
- Processing webhooks from external services
- Scheduling periodic jobs

## When NOT to Use

- Replacing backend API logic
- Real-time user interactions (use backend API)
- Simple one-off tasks (use scripts)

## Agent Responsible

**Cloud Runtime Agent**

## Related Teams

- Automation & Operations Team
- Bots Team

## 8 Core Workflows

1. **Telegram Lead Capture** — Webhook → Classify → Save → Respond
2. **WhatsApp Message Router** — Webhook → Qualify → Assign task
3. **Error Alert System** — Error detected → Notify + Create task
4. **New Project Setup** — Manual trigger → Create tasks → Assign agents
5. **Daily Report** — Schedule → Query metrics → Send email
6. **Affiliate Follow-Up** — Lead status change → Schedule messages → Track
7. **Payment Confirmed** — Webhook → Activate → Welcome email
8. **New User Welcome** — User created → Email + Notification

## Validation

- [ ] Workflow designed with clear trigger + actions
- [ ] Error handling included (retry, fallback)
- [ ] No real tokens in workflow config
- [ ] Webhooks have validation
