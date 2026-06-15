# Kali Import Checklist

Use this checklist to track import progress per category.

Legend: [ ] Pending · [~] In progress · [✓] Done · [✗] Rejected

---

## 1. PROJECT_MEMORY.md
- [ ] Copy from Kali to `~/harnesses/kali-import-staging/opencode/PROJECT_MEMORY.md`
- [ ] Run `kali-import-audit` on staging file
- [ ] Review diff against current `~/harnesses/opencode/PROJECT_MEMORY.md`
- [ ] Merge improvements manually
- [ ] Run `kali-import-safe-copy`
- [ ] Validate: file present, no corruption

## 2. AGENTS.md
- [ ] Copy from Kali to `~/harnesses/kali-import-staging/opencode/AGENTS.md`
- [ ] Run `kali-import-audit` on staging file
- [ ] Review diff against current `~/harnesses/opencode/AGENTS.md`
- [ ] Merge improvements manually
- [ ] Run `kali-import-safe-copy`
- [ ] Validate: file present, no corruption

## 3. Prompts
- [ ] Copy prompt files from Kali to `~/harnesses/kali-import-staging/prompts/`
- [ ] Run `kali-import-audit` on staging directory
- [ ] Review each prompt for secrets or Kali-specific paths
- [ ] Run `kali-import-safe-copy`
- [ ] Validate: prompts accessible, no secrets

## 4. Scripts (`~/harnesses/scripts/`)
- [ ] Copy scripts from Kali to `~/harnesses/kali-import-staging/scripts/`
- [ ] Run `kali-import-audit` on staging directory
- [ ] Review each script for:
  - [ ] macOS path compatibility (`/home/user/` → `/Users/admin/`)
  - [ ] Command availability on macOS
  - [ ] Shell syntax
- [ ] Run `kali-import-safe-copy`
- [ ] `chmod +x` on new scripts
- [ ] Test each new script
- [ ] Validate: `ocdoctor` passes

## 5. Skills (`~/harnesses/skills/`)
- [ ] Copy skill files from Kali to `~/harnesses/kali-import-staging/skills/`
- [ ] Run `kali-import-audit` on staging directory
- [ ] Review each skill for:
  - [ ] Secrets or tokens
  - [ ] Kali-specific paths
  - [ ] Valid markdown/JSON
- [ ] Run `kali-import-safe-copy`
- [ ] Validate: skills listed in `~/harnesses/skills/`

## 6. Docs (`~/harnesses/docs/`)
- [ ] Copy docs from Kali to `~/harnesses/kali-import-staging/docs/`
- [ ] Run `kali-import-audit` on staging directory
- [ ] Review for:
  - [ ] Secrets or tokens
  - [ ] Kali-specific paths
  - [ ] Broken links
- [ ] Adapt paths from Kali to macOS
- [ ] Run `kali-import-safe-copy`
- [ ] Validate: docs readable

## 7. Android Projects
- [ ] Copy source files only from Kali to `~/harnesses/kali-import-staging/projects/android/`
- [ ] Exclude: `.gradle/`, `build/`, `local.properties`, `.idea/`
- [ ] Run `kali-import-audit` on staging directory
- [ ] Review build configs for macOS paths
- [ ] Run `kali-import-safe-copy`
- [ ] Validate: `ls ~/harnesses/projects/android/`

## 8. React Native Expo Projects
- [ ] Copy source files only from Kali to `~/harnesses/kali-import-staging/projects/expo-app/`
- [ ] Exclude: `node_modules/`, `.expo/`, `dist/`, `.env`
- [ ] Run `kali-import-audit` on staging directory
- [ ] Review for macOS path compatibility
- [ ] Run `kali-import-safe-copy`
- [ ] `npm install` in project directory
- [ ] Validate: project starts

## 9. Telegram Bots
- [ ] Copy bot source from Kali to `~/harnesses/kali-import-staging/projects/bots/telegram/`
- [ ] Exclude: `node_modules/`, `.env`, session files
- [ ] Run `kali-import-audit` on staging directory
- [ ] Review for:
  - [ ] Hardcoded tokens
  - [ ] Kali-specific paths
  - [ ] Webhook URLs
- [ ] Run `kali-import-safe-copy`
- [ ] `npm install` in project directory
- [ ] Validate: syntax check passes

## 10. WhatsApp Bots
- [ ] Copy bot source from Kali to `~/harnesses/kali-import-staging/projects/bots/whatsapp/`
- [ ] Exclude: `node_modules/`, `.env`, auth files, session files
- [ ] Run `kali-import-audit` on staging directory
- [ ] Review for:
  - [ ] Hardcoded tokens
  - [ ] Kali-specific paths
  - [ ] Webhook URLs
- [ ] Run `kali-import-safe-copy`
- [ ] `npm install` in project directory
- [ ] Validate: syntax check passes

## 11. InsForge
- [ ] Copy schema files and docs from Kali to `~/harnesses/kali-import-staging/projects/insforge/`
- [ ] Exclude: `.env`, API key files
- [ ] Run `kali-import-audit` on staging directory
- [ ] Review for exposed keys
- [ ] Run `kali-import-safe-copy`
- [ ] Validate: schemas valid SQL

## 12. Railway / VPS
- [ ] Copy deploy files from Kali to `~/harnesses/kali-import-staging/projects/railway/`
- [ ] Exclude: `.env`, secrets
- [ ] Run `kali-import-audit` on staging directory
- [ ] Review for:
  - [ ] Hardcoded secrets
  - [ ] Kali-specific paths
  - [ ] Token exposure
- [ ] Run `kali-import-safe-copy`
- [ ] Validate: Dockerfile/docker-compose parse correctly

## 13. MCPs
- [ ] Copy MCP files from Kali to `~/harnesses/kali-import-staging/mcp/`
- [ ] Exclude: tokens, hardcoded paths
- [ ] Run `kali-import-audit` on staging directory
- [ ] Review for macOS adaptation
- [ ] Run `kali-import-safe-copy`
- [ ] Validate: MCP READMEs readable

---

## Global Checks

- [ ] `ocdoctor` — 35/35 checks pass
- [ ] `ocharness-check` — 28/28 checks pass
- [ ] `ocbackup` — snapshot taken after all imports
- [ ] No secrets printed during any step
- [ ] All paths adapted to macOS
- [ ] OpenCode starts correctly
