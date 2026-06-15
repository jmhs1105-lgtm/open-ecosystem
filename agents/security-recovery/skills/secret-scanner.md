# Skill: secret-scanner

## Fuente
- Tipo: Adaptado de gitleaks patterns y buenas prácticas de seguridad
- Licencia: MIT (gitleaks)

## Adaptación para OpenCode
Escanea archivos en busca de secretos, tokens, API keys y credenciales expuestas.

## Agente dueño
Security & Recovery Agent

## Categoría
Security / Audit

## Objetivo
Detectar secretos antes de que se integren al ecosistema o se expongan en logs.

## Cuándo usarla
- Antes de integrar skills descargados.
- Antes de hacer commit.
- Antes de copiar archivos desde Kali.
- Cuando se sospecha de una fuga de credenciales.
- Después de recibir archivos del usuario.

## Patrones a detectar
- `api_key=valor_largo`
- `token=valor_largo`
- `secret=valor_largo`
- `password=valor_largo`
- `sk-...` (OpenAI keys)
- `ghp_...` (GitHub PAT)
- `AKIA...` (AWS keys)
- `xoxb-...` (Slack tokens)
- JWTs (`eyJ...`)

## Pasos seguros
1. Definir directorio o archivo a escanear.
2. Ejecutar grep con patrones de secretos.
3. Reportar hallazgos SIN imprimir el valor del secreto.
4. Marcar archivo como sospechoso.
5. Recomendar: eliminar, rotar key, o verificar si es falso positivo.

## Comandos permitidos
- `grep -rniE 'pattern' directorio/` (solo búsqueda, sin imprimir valores).
- `find` para localizar archivos.

## Comandos que requieren confirmación
- Ninguno (este skill es solo escaneo).

## Archivos permitidos
- Cualquier archivo del ecosistema (lectura).

## Archivos prohibidos
- No imprimir valores de secretos encontrados.
- No modificar archivos durante escaneo.

## Validación
- Escaneo completado sin errores.
- Hallazgos documentados.
- Falsos positivos identificados.

## Rollback
- No aplica (solo lectura).

## Riesgos
- Falsos positivos (nombres de variables que parecen secrets).
- Secretos en formatos no detectados.

## Estado
adapted
