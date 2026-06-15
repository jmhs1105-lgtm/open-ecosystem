# SendGrid Email Plan

## Overview

SendGrid handles all transactional emails: confirmations, password resets, system alerts, daily reports, lead notifications, and welcome messages.

## Architecture

```
Backend API → SendGrid API → User Inbox
              ↓
           InsForge email_events (tracking)
```

## Email Types

| ID | Template | Trigger | Recipient |
|---|---|---|---|
| 1 | Confirm Account | User registers | User |
| 2 | Reset Password | Password reset request | User |
| 3 | System Alert | Error critical | Admin |
| 4 | Daily Report | Schedule (n8n) | Admin |
| 5 | Lead Notification | New qualified lead | Admin |
| 6 | Payment Confirmation | Payment webhook | User |
| 7 | Welcome | First login/registration | User |
| 8 | Follow-Up | n8n schedule | Lead |

## Templates

### 1. Confirm Account
```
Subject: Confirma tu cuenta — OpenCode Ecosystem
Body: Hola {{name}}, confirma tu cuenta en {{confirm_url}}
```

### 2. Reset Password
```
Subject: Recupera tu contraseña — OpenCode Ecosystem
Body: Hola {{name}}, restablece tu contraseña en {{reset_url}}
```

### 3. System Alert
```
Subject: ⚠️ Alerta del sistema — {{error_type}}
Body: Se detectó un error crítico:
  - Agente: {{agent_name}}
  - Mensaje: {{message}}
  - Hora: {{timestamp}}
  Ver logs: {{log_url}}
```

### 4. Daily Report
```
Subject: 📊 Reporte diario — {{date}}
Body:
  - Nuevos leads: {{new_leads}}
  - Conversiones: {{conversions}}
  - Costo API: ${{api_cost}}
  - Errores: {{errors}}
  - Agentes activos: {{active_agents}}
```

### 5. Lead Notification
```
Subject: 🎯 Nuevo lead calificado — {{lead_name}}
Body:
  - Fuente: {{source}}
  - Score: {{score}}
  - Interés: {{intent}}
  - Contacto: {{email}} / {{phone}}
  Ir a lead: {{lead_url}}
```

### 6. Payment Confirmation
```
Subject: ✅ Pago confirmado — {{plan_name}}
Body: Hola {{name}}, tu pago ha sido confirmado.
  - Plan: {{plan_name}}
  - Importe: ${{amount}}
  - Próximo cobro: {{next_billing}}
```

### 7. Welcome
```
Subject: 🚀 Bienvenido a OpenCode Ecosystem
Body: Hola {{name}}, gracias por unirte.
  Comienza aquí: {{dashboard_url}}
  Documentación: {{docs_url}}
```

### 8. Follow-Up
```
Subject: {{name}}, ¿viste nuestra oferta?
Body: Hola {{name}}, hace {{days_since}} días te enviamos una oferta.
  ¿Quieres que la revisemos juntos?
  Responde: {{reply_url}}
```

## Environment Variables

```
SENDGRID_API_KEY=
SENDGRID_FROM_EMAIL=
SENDGRID_FROM_NAME=
SENDGRID_TEMPLATE_CONFIRM_ACCOUNT=
SENDGRID_TEMPLATE_RESET_PASSWORD=
SENDGRID_TEMPLATE_SYSTEM_ALERT=
SENDGRID_TEMPLATE_DAILY_REPORT=
SENDGRID_TEMPLATE_LEAD_NOTIFICATION=
SENDGRID_TEMPLATE_PAYMENT_CONFIRMATION=
SENDGRID_TEMPLATE_WELCOME=
SENDGRID_TEMPLATE_FOLLOW_UP=
```

## Service Integration

```js
import sgMail from '@sendgrid/mail'

sgMail.setApiKey(process.env.SENDGRID_API_KEY)

export async function sendEmail(templateId, to, data) {
  const msg = {
    to,
    from: { email: process.env.SENDGRID_FROM_EMAIL, name: process.env.SENDGRID_FROM_NAME },
    templateId,
    dynamicTemplateData: data,
  }

  const [response] = await sgMail.send(msg)

  await query('email_events', (q) =>
    q.insert([{
      template: templateId,
      recipient: to,
      status: response.statusCode === 202 ? 'sent' : 'failed',
      sendgrid_message_id: response.headers['x-message-id'],
    }])
  )

  return response
}
```

## Testing Mode

- Set `SENDGRID_FROM_EMAIL` to verified sender
- Use SendGrid sandbox mode for dev
- Log all sends to `email_events` table
- Never send real emails without approval

## Rules

1. No enviar correos reales sin aprobación
2. No imprimir SENDGRID_API_KEY
3. No guardar clave en código
4. Validar remitente y destinatario
5. No spam — siempre incluir opción de baja
6. Usar templates (no HTML inline)
