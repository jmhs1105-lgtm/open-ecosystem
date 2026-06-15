# Skill: no-sensitive-login-policy

## Fuente
- Tipo: Adaptado de reglas de Playwright MCP y SECURITY_RULES.md
- Licencia: Uso interno

## Adaptación para OpenCode
Prohíbe iniciar sesión en sitios sensibles sin autorización explícita.

## Agente dueño
MCP Operations Agent

## Categoría
MCP / Playwright / Security

## Objetivo
Prevenir acceso no autorizado a cuentas personales.

## Reglas absolutas
1. NUNCA login a banking.
2. NUNCA login a email.
3. NUNCA login a redes sociales sin autorización.
4. NUNCA login a tiendas online sin autorización.
5. NUNCA login con credenciales reales sin confirmación.
6. SIEMPRE pedir autorización antes de cualquier login.

## Excepciones (con autorización explícita)
- Login a servicios de desarrollo (GitHub, npm) si el usuario autoriza.
- Login a plataformas de testing si el usuario autoriza.
- Login a localhost.

## Estado
adapted
