# Skill: env-protection

## Fuente
- Tipo: Adaptado de OWASP y buenas prácticas de seguridad
- Licencia: Uso interno

## Adaptación para OpenCode
Protege archivos `.env` de exposición, commit accidental y acceso no autorizado.

## Agente dueño
Security & Recovery Agent

## Categoría
Security / Secrets

## Objetivo
Garantizar que `.env` nunca se imprima, commitee o comparta.

## Cuándo usarla
- Antes de hacer git commit.
- Antes de compartir código.
- Al crear proyectos nuevos.
- Cuando se sospecha de exposición.

## Reglas absolutas
1. NUNCA imprimir contenido de `.env`.
2. NUNCA hacer `cat .env` en output visible.
3. NUNCA commitear `.env` a git.
4. NUNCA compartir `.env` por chat o email.
5. SIEMPRE `.env` en `.gitignore`.
6. SIEMPRE permisos `600` en `.env`.

## Pasos seguros
1. Verificar que `.gitignore` incluye `.env`.
2. Ejecutar `chmod 600 .env`.
3. Verificar que `git status` no muestra `.env`.
4. Si se sospecha exposición: rotar todas las keys.

## Estado
adapted
