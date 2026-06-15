# Skill: dangerous-command-review

## Fuente
- Tipo: Adaptado de OWASP y reglas del ecosistema
- Licencia: Uso interno

## Adaptación para OpenCode
Revisa comandos antes de ejecutarlos para detectar riesgos.

## Agente dueño
Security & Recovery Agent

## Categoría
Security / Review

## Objetivo
Interceptar comandos peligrosos antes de que se ejecuten.

## Comandos que requieren revisión

| Comando | Riesgo | Acción |
|---|---|---|
| `rm -rf` | Borrado masivo | Pedir confirmación |
| `sudo` | Acceso root | Pedir confirmación |
| `curl \| bash` | Ejecución remota | Rechazar o pedir confirmación |
| `git push` | Exposición de código | Pedir confirmación |
| `npm publish` | Publicación de paquete | Pedir confirmación |
| `docker compose up` | Deploy | Pedir confirmación |
| `railway up` | Deploy cloud | Pedir confirmación |
| `chmod 777` | Permisos peligrosos | Rechazar |
| `passwd` | Cambio de contraseña | Pedir confirmación |

## Pasos seguros
1. Leer el comando a ejecutar.
2. Comparar con tabla de riesgos.
3. Si es riesgoso: PAUSAR y explicar.
4. Pedir confirmación al usuario.
5. Si aprueba: crear backup y ejecutar.
6. Si rechaza: cancelar.

## Estado
adapted
