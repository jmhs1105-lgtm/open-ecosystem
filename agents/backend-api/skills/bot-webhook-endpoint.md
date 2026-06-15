# Skill: bot-webhook-endpoint
## Agente dueño: Backend API Agent
## Categoría: Backend / Webhook
## Objetivo: Crear endpoint para recibir webhooks de bots.
## Pasos seguros
1. Crear POST route `/webhook/telegram` o `/webhook/whatsapp`.
2. Verificar firma del webhook si aplica.
3. Parsear payload.
4. Procesar mensaje.
5. Retornar 200 rápidamente.
## Estado: adapted
