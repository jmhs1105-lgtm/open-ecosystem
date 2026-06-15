# Skill: disaster-recovery-runbook

## Fuente
- Tipo: Adaptado de RECOVERY.md y protocolos del ecosistema
- Licencia: Uso interno

## Adaptación para OpenCode
Guía paso a paso para recuperar el ecosistema después de un desastre.

## Agente dueño
Security & Recovery Agent

## Categoría
Security / Recovery

## Objetivo
Recuperar el sistema de forma ordenada cuando todo falla.

## Escenarios de desastre

### 1. opencode.json corrupto
```bash
cp ~/.config/opencode/opencode.json.bak.* ~/.config/opencode/opencode.json
python3 -m json.tool ~/.config/opencode/opencode.json
```

### 2. OpenCode no inicia
```bash
~/harnesses/scripts/ocdoctor
# Si falla: restaurar config desde backup
# Si persiste: reinstalar OpenCode
```

### 3. Agentes eliminados
```bash
cp -r ~/harnesses/backups/agents-before-create-*/* ~/harnesses/agents/
~/harnesses/scripts/ocagents-check
```

### 4. Skills eliminados
```bash
cp -r ~/harnesses/backups/skills-before-update-*/* ~/harnesses/
~/harnesses/scripts/ocskills-check
```

### 5. Secrets comprometidos
1. Rotar TODAS las keys inmediatamente.
2. Eliminar `.env` comprometido.
3. Crear nuevo `.env` con keys nuevas.
4. Verificar que no hay más fugas.

### 6. Sistema completo roto
```bash
cp -r ~/harnesses/backups/ecosystem-backup-*/* ~/harnesses/
~/harnesses/scripts/ocdoctor
~/harnesses/scripts/ocharness-check
```

## Estado
adapted
