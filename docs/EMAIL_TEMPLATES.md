# Email Templates

## SendGrid Dynamic Templates

### 1. Confirm Account

```
Subject: Confirma tu cuenta — OpenCode Ecosystem
──────────────────────────────────────────
Hola {{name}},

Gracias por registrarte en OpenCode Ecosystem.

Para confirmar tu cuenta, haz clic en el botón:

[CONFIRMAR CUENTA]({{confirm_url}})

O copia este enlace: {{confirm_url}}

Este enlace expira en 24 horas.

— OpenCode Ecosystem
```

### 2. Reset Password

```
Subject: Recupera tu contraseña — OpenCode Ecosystem
──────────────────────────────────────────
Hola {{name}},

Recibimos una solicitud para restablecer tu contraseña.

[RESET PASSWORD]({{reset_url}})

Si no solicitaste esto, ignora este correo.

— OpenCode Ecosystem
```

### 3. System Alert

```
Subject: ⚠️ Alerta del sistema — {{error_type}}
──────────────────────────────────────────
Se detectó un error en el sistema:

• Agente: {{agent_name}}
• Tipo: {{error_type}}
• Mensaje: {{message}}
• Hora: {{timestamp}}

[VER LOGS]({{log_url}})

— Monitor Automático
```

### 4. Daily Report

```
Subject: 📊 Reporte Diario — {{date}}
──────────────────────────────────────────
Resumen del día:

• Nuevos leads: {{new_leads}}
• Leads calificados: {{qualified_leads}}
• Conversiones: {{conversions}}
• Tareas completadas: {{completed_tasks}}
• Errores: {{error_count}}
• Costo API: \${{api_cost}}
• Agentes activos: {{active_agents}}

[VER DASHBOARD]({{dashboard_url}})

— OpenCode Ecosystem
```

### 5. Lead Notification

```
Subject: 🎯 Nuevo lead — {{lead_name}}
──────────────────────────────────────────
Nuevo lead capturado:

• Nombre: {{lead_name}}
• Fuente: {{source}}
• Score: {{score}}/10
• Interés: {{intent}}
{% if email %}• Email: {{email}}{% endif %}
{% if phone %}• Teléfono: {{phone}}{% endif %}

[VER LEAD]({{lead_url}})

— Bot Automático
```

### 6. Payment Confirmation

```
Subject: ✅ Pago confirmado — {{plan_name}}
──────────────────────────────────────────
Hola {{name}},

Tu pago ha sido procesado exitosamente.

• Plan: {{plan_name}}
• Importe: \${{amount}}
• Próximo cobro: {{next_billing}}

[VER FACTURA]({{invoice_url}})

— OpenCode Ecosystem
```

### 7. Welcome

```
Subject: 🚀 Bienvenido a OpenCode Ecosystem
──────────────────────────────────────────
Hola {{name}},

¡Bienvenido a OpenCode Ecosystem!

Tu plataforma completa para gestionar bots,
leads, afiliados y métricas.

[IR AL DASHBOARD]({{dashboard_url}})

¿Preguntas? Responde este correo.

— El equipo de OpenCode
```

### 8. Follow-Up

```
Subject: {{name}}, ¿viste la oferta?
──────────────────────────────────────────
Hola {{name}},

Hace {{days_since}} días te compartimos una oferta
que podría interesarte.

¿Quieres que la revisemos?

[SÍ, QUIERO SABER MÁS]({{offer_url}})

Si no te interesa, ignora este mensaje.

— Bot Automático
```

## Template IDs (in SendGrid)

| Template | ID Variable |
|---|---|
| Confirm Account | `SENDGRID_TEMPLATE_CONFIRM_ACCOUNT` |
| Reset Password | `SENDGRID_TEMPLATE_RESET_PASSWORD` |
| System Alert | `SENDGRID_TEMPLATE_SYSTEM_ALERT` |
| Daily Report | `SENDGRID_TEMPLATE_DAILY_REPORT` |
| Lead Notification | `SENDGRID_TEMPLATE_LEAD_NOTIFICATION` |
| Payment Confirmation | `SENDGRID_TEMPLATE_PAYMENT_CONFIRMATION` |
| Welcome | `SENDGRID_TEMPLATE_WELCOME` |
| Follow-Up | `SENDGRID_TEMPLATE_FOLLOW_UP` |
