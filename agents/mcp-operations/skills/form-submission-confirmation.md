# Skill: form-submission-confirmation

## Fuente
- Tipo: Adaptado de reglas de Playwright MCP
- Licencia: Uso interno

## Adaptación para OpenCode
Exige confirmación antes de enviar cualquier formulario web.

## Agente dueño
MCP Operations Agent

## Categoría
MCP / Playwright / Security

## Objetivo
Prevenir envíos no autorizados de formularios.

## Reglas
1. NUNCA enviar formularios sin confirmación.
2. NUNCA hacer submit con datos reales sin autorización.
3. SIEMPRE mostrar qué se va a enviar antes de enviar.
4. SIEMPRE pedir confirmación explícita.

## Formularios sensibles
- Login forms.
- Payment forms.
- Registration forms.
- Contact forms con datos personales.
- Forms que crean cuentas.

## Formularios permitidos (con confirmación)
- Search forms.
- Filter forms.
- Forms de prueba en localhost.

## Estado
adapted
