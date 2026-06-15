# AI Provider Agent — Checklist

## Antes de trabajar
- [ ] Confirmar requisitos de tarea.
- [ ] Revisar `.env.example` actual.
- [ ] Verificar si Ollama está instalado.

## Durante ejecución
- [ ] Recomendar modelo adecuado.
- [ ] Actualizar `.env.example`.
- [ ] No imprimir API keys.
- [ ] Documentar fallback.

## Después de terminar
- [ ] Validar configuración.
- [ ] Probar endpoint básico si es local.
- [ ] Actualizar documentación.

## Validaciones
- [ ] Variables documentadas en `.env.example`.
- [ ] No secrets en código.
- [ ] Fallback definido.

## Señales de error
- API key inválida.
- Modelo no disponible.
- Límite de rate excedido.
- Ollama no responde.

## Rollback básico
- Restaurar `.env.example` anterior.
- Cambiar provider default al anterior.
- Detener modelo local si consume recursos.
