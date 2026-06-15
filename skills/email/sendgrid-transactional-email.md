# Skill: SendGrid Transactional Email

## Objective

Send automated transactional emails via SendGrid for account confirmations, password resets, system alerts, daily reports, lead notifications, and payment confirmations.

## When to Use

- User creates account → send confirmation email
- User requests password reset → send reset link
- Bot or worker detects critical error → send alert
- Daily report scheduled → send to admin
- New lead qualified → notify admin
- Payment confirmed → send receipt

## When NOT to Use

- Marketing newsletters (use dedicated tool)
- Cold emails / unsolicited
- Without explicit user permission
- With real recipients in testing mode
- Without template ID

## Agent Responsible

**Cloud Runtime Agent** + **Backend API Agent**

## Related Teams

- Email & Notifications Team
- Automation & Operations Team
- Security & Secrets Team

## Related Tools

- SendGrid API / `@sendgrid/mail`
- InsForge `email_events` table
- n8n (for scheduled sends)

## Suggested Commands

```bash
# Install SDK
npm install @sendgrid/mail

# Test send (sandbox mode)
curl -X POST https://api.sendgrid.com/v3/mail/send \
  -H "Authorization: Bearer $SENDGRID_API_KEY" \
  -H "Content-Type: application/json" \
  -d '{"personalizations":[{"to":[{"email":"test@example.com"}]}],
       "from":{"email":"noreply@example.com"},
       "subject":"Test",
       "content":[{"type":"text/plain","value":"Hello"}]}'
```

## Risks

1. **API key exposure** — never commit, use .env
2. **Rate limits** — 100 emails/day free tier
3. **Bounce rate** — invalid emails degrade reputation
4. **Spam complaints** — always include unsubscribe
5. **Wrong recipient** — validate email before sending

## Validations

- [ ] SENDGRID_API_KEY set in .env (not in code)
- [ ] SENDGRID_FROM_EMAIL verified in SendGrid
- [ ] Template IDs configured in .env.example
- [ ] email_events table records all sends
- [ ] Testing mode enabled before sending real emails
- [ ] Unsubscribe link in every email

## Final Checklist

```
From: Verified sender domain
To: Validated email
Template: Dynamic template (not HTML inline)
Tracking: email_events table
Testing: Sandbox mode first
Approval: Required before production sends
```

## Integration with InsForge

Every email send logs to `email_events`:
- `template` — which template was used
- `recipient` — who received it
- `status` — sent, delivered, opened, bounced, failed
- `sendgrid_message_id` — for tracking in SendGrid dashboard
