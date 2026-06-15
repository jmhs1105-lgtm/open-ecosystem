# Skill: bot-health-check

## Fuente
- Tipo: Adaptado de patrones de monitoreo de bots
- Licencia: Uso interno

## Adaptación para OpenCode
Verifica que el bot de Telegram está operativo y respondiendo.

## Agente dueño
Telegram Bot Agent

## Categoría
Telegram / Health

## Objetivo
Diagnosticar el estado del bot: conectado, respondiendo, sin errores.

## Cuándo usarla
- Después de iniciar el bot.
- Cuando el bot no responde.
- En revisiones periódicas.
- Después de deploy.

## Pasos seguros
1. Verificar que el proceso del bot está corriendo.
2. Verificar que el token es válido (sin imprimirlo).
3. Hacer test de `getMe` al API de Telegram.
4. Verificar logs por errores.
5. Si usa webhook: verificar que el endpoint responde.

## Comandos permitidos
- `ps aux | grep bot` (verificar proceso).
- `curl -s "https://api.telegram.org/bot/getMe"` (sin token real).

## Comandos que requieren confirmación
- Reiniciar el bot.
- Cambiar webhook.

## Estado
adapted
