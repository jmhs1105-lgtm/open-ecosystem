# Notifications System

## Channels

| Channel | Use | Tech |
|---|---|---|
| In-app | Notificaciones dentro de la app | InsForge Realtime |
| Push | Notificaciones en dispositivo | Expo Notifications |
| Email | Alertas, reportes | SendGrid |
| Telegram | Alertas al dueño | Telegram Bot API |
| WhatsApp | Seguimiento a leads | WhatsApp Cloud API |

## Notification Types

| Type | Channel | Trigger |
|---|---|---|
| `info` | In-app | General information |
| `alert` | In-app + Email | Critical system events |
| `task_update` | In-app | Task status change |
| `lead_alert` | Telegram + Email | New qualified lead |
| `system` | All channels | System health changes |
| `payment` | Email + In-app | Payment confirmed/failed |

## In-App Notifications (InsForge Realtime)

```typescript
// Subscribe to notifications
insforge
  .channel('notifications')
  .on('postgres_changes', { event: 'INSERT', schema: 'public' }, (payload) => {
    showNotification(payload.new)
  })
  .subscribe()
```

## Push Notifications (Expo)

```typescript
import * as Notifications from 'expo-notifications'

// Register for push
const token = (await Notifications.getExpoPushTokenAsync()).data

// Send from backend
await fetch('https://exp.host/--/api/v2/push/send', {
  method: 'POST',
  body: JSON.stringify({
    to: token,
    title: 'Nuevo lead',
    body: 'Tienes un lead calificado',
  }),
})
```

## Notification Rules

1. No notificar entre 22:00 y 08:00 (hora local)
2. Máximo 3 notificaciones por día por usuario
3. Agrupar notificaciones del mismo tipo
4. Incluir siempre opción de silenciar
5. No enviar datos sensibles en notificaciones

## Flow

```
Event Trigger
  ↓
Check user preferences (time, channel, frequency)
  ↓
Create notification record (InsForge)
  ↓
Route to channel(s):
  ├── In-app → InsForge Realtime
  ├── Push → Expo Push API
  ├── Email → SendGrid
  ├── Telegram → Bot API
  └── WhatsApp → Cloud API
  ↓
Log to email_events / notifications table
```

## Environment Variables

```
EXPO_PUSH_TOKEN=
TELEGRAM_ALERT_CHAT_ID=
```
