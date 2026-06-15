# Skill: kali-import-audit

## Fuente
- Tipo: Adaptado de KALI_SYNC_PLAN.md y kali-import-audit script
- Licencia: Uso interno

## Adaptación para OpenCode
Audita archivos importados desde Kali antes de integrarlos al ecosistema.

## Agente dueño
Security & Recovery Agent

## Categoría
Security / Import

## Objetivo
Detectar secretos, configs rotas, binarios y archivos peligrosos en importaciones de Kali.

## Cuándo usarla
- Antes de copiar archivos desde Kali.
- Después de scp/rsync desde Kali.
- Antes de integrar staging al ecosistema.

## Pasos seguros
1. Ejecutar `~/harnesses/scripts/kali-import-audit ~/harnesses/kali-import-staging`.
2. Revisar reporte.
3. Si hay bloqueos: resolver antes de continuar.
4. Si pasa: proceder con `kali-import-safe-copy`.

## Qué detecta el audit
- `.env` con secrets.
- `opencode.json` incompatible.
- `providers` (plural) en configs.
- `node_modules/`.
- Caches y build artifacts.
- Archivos > 10MB.
- JSON inválido.
- Shell scripts con errores.

## Estado
adapted
