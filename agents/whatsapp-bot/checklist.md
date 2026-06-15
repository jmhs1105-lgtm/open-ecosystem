# WhatsApp Bot Agent — Checklist

## Antes de trabajar
- [ ] Confirmar que se usará API oficial o servicio permitido.
- [ ] Revisar términos de WhatsApp/Meta.
- [ ] Tener credenciales en `.env`.

## Durante ejecución
- [ ] Diseñar flujo con opt-in claro.
- [ ] No enviar mensajes no solicitados.
- [ ] No exponer credenciales.
- [ ] Documentar cada paso.

## Después de terminar
- [ ] Validar webhook localmente.
- [ ] Revisar compliance.
- [ ] Preparar deploy.

## Validaciones
- [ ] Webhook responde 200.
- [ ] Flujo no viola políticas.
- [ ] Secrets protegidos.

## Señales de error
- Webhook no verificado.
- Mensajes rebotados.
- Cuenta bloqueada por spam.

## Rollback básico
- Desconectar webhook.
- Restaurar código anterior.
- Revisar políticas.
