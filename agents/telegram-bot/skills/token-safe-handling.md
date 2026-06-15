# Skill: token-safe-handling

## Fuente
- Tipo: Adaptado de mejores prácticas de Telegram Bot API
- Licencia: MIT

## Adaptación para OpenCode
Maneja tokens de Telegram de forma segura.

## Agente dueño
Telegram Bot Agent

## Categoría
Telegram / Security

## Objetivo
Garantizar que tokens de Telegram nunca se expongan.

## Reglas absolutas
1. NUNCA imprimir token en logs.
2. NUNCA hardcodear token en código.
3. NUNCA commitear token a git.
4. SIEMPRE usar variable de entorno.
5. SIEMPRE `.env` en `.gitignore`.
6. SIEMPRE permisos `600` en `.env`.

## Pasos seguros
1. Verificar que token está en `.env` como `TELEGRAM_BOT_TOKEN`.
2. Verificar que `.gitignore` protege `.env`.
3. En código: `process.env.TELEGRAM_BOT_TOKEN`.
4. Si se sospecha exposición: regenerar token en BotFather.

## Estado
adapted
