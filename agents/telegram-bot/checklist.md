# Telegram Bot Agent — Checklist

## Antes de trabajar
- [ ] Confirmar token en `.env`.
- [ ] Revisar estructura del bot.
- [ ] Verificar conexión backend/InsForge.

## Durante ejecución
- [ ] Crear handlers modulares.
- [ ] No hardcodear token.
- [ ] Guardar leads en InsForge.
- [ ] No enviar mensajes a usuarios sin confirmación.

## Después de terminar
- [ ] Testear comandos en local.
- [ ] Crear health check.
- [ ] Preparar config para deploy.

## Validaciones
- [ ] Bot inicia sin errores.
- [ ] Comandos responden.
- [ ] Token no expuesto.

## Señales de error
- Token inválido.
- Webhook no responde.
- Fallo de conexión a backend.

## Rollback básico
- Detener bot.
- Restaurar versión anterior.
- Reconfigurar webhook.
