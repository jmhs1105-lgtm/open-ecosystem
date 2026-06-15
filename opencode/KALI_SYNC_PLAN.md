# Kali → MacBook Safe Sync Plan

## Purpose
Securely import knowledge, code, and configuration from the Kali Linux ecosystem into the MacBook OpenCode ecosystem — without breaking the clean MacBook setup.

## Principles
1. **Staging zone first** — everything lands in `~/harnesses/kali-import-staging/` for audit.
2. **Audit before import** — `kali-import-audit` scans for secrets, invalid files, and forbidden items.
3. **Approved copy only** — `kali-import-safe-copy` moves from staging to production with backup.
4. **Never touch OpenCode config** — `opencode.json` stays MacBook-native.
5. **No secrets, no caches, no build artifacts.**

---

## What CAN Be Imported ✅

| Category | What | Validation |
|---|---|---|
| PROJECT_MEMORY.md | Project memory content | Diff review, no secrets |
| AGENTS.md | Agent definitions | Diff review, path adaptation |
| Prompts | `.md` prompt files | No secrets, valid markdown |
| Scripts | `~/harnesses/scripts/*` | Shellcheck + macOS path review |
| Skills | `~/harnesses/skills/*/SKILL.md` | No secrets, valid markdown/JSON |
| Docs | `~/harnesses/docs/*.md` | No secrets, path adaptation |
| Android code | source files (`.kt`, `.java`, `build.gradle.kts`) | No .gradle/, no build/ |
| Expo code | source files (`.ts`, `.tsx`, `.js`, `app.json`) | No node_modules/, no .expo/ |
| Bot code | Telegram/WhatsApp source | No .env, no node_modules, no session files |
| InsForge | SQL schemas, docs, .env.example | No real .env, no API keys |
| Railway/VPS | Dockerfile, docker-compose, scripts | No .env, no secrets |
| MCPs | MCP READMEs, wrapper scripts | No tokens, no hardcoded paths |

## What MUST NOT Be Imported ❌

| Item | Reason |
|---|---|
| `opencode.json` / `opencode.jsonc` | Contains `providers` (plural) — incompatible with 1.16.2 |
| Any file with `providers` key | Incompatible format |
| `~/.config/opencode/` | Entirely MacBook-native |
| `~/.local/share/opencode/` | Session data, cache |
| `~/.local/state/opencode/` | Runtime state |
| `node_modules/` | Reinstall with `npm ci` |
| `.env` files with secrets | Recreate manually |
| `.gradle/`, `build/`, `.expo/`, `dist/` | Build artifacts |
| Telegram session files | Re-authenticate |
| WhatsApp auth files | Re-authenticate |
| SSH/GPG keys | Use MacBook keys |
| `.git/` directories | Re-init repos if needed |
| `package-lock.json` | Regenerate |
| Caches of any kind | Will be regenerated |
| Files > 10MB | Likely caches or binaries |

---

## Import Order

```
Step 1: Create staging dirs + copy files from Kali to staging
        (manual: scp, rsync selective, or USB)
Step 2: Run kali-import-audit on staging/
        → Review report, remove/reject bad files
Step 3: Run kali-import-safe-copy
        → Shows preview → confirms → backs up → copies → validates
Step 4: Run ocdoctor to verify system health
Step 5: Run ocharness-check to verify ecosystem structure
Step 6: Run ocbackup to snapshot post-import state
```

Each category can be imported independently. Repeat steps 2-6 per category.

---

## Risks & Mitigation

| Risk | Mitigation |
|---|---|
| Secret leaked in a script | `kali-import-audit` scans for regex patterns before copy |
| Broken script imported | `kali-import-audit` validates shell syntax |
| Invalid JSON imported | `kali-import-audit` validates with `python3 -m json.tool` |
| Large binary file copied | Audit flags files > 1MB (warning) and > 10MB (blocked) |
| Path incompatibility | Scripts reviewed for `/home/user/` → `/Users/admin/` adaptation |
| Accidental config overwrite | `kali-import-safe-copy` never writes to `~/.config/opencode/` |
| Ecosystem corruption | Backup is taken before every copy operation |

---

## Rollback

| Scenario | Rollback |
|---|---|
| Audit finds secrets in staging | Remove offending files from staging, do NOT proceed |
| Safe-copy imported wrong file | Restore from backup created before copy |
| Script doesn't work on macOS | Revert script, edit paths, re-audit |
| Ecosystem check fails | `ocrestore` to last snapshot |
| OpenCode config broken | `cp ~/.config/opencode/opencode.json.bak.* ~/.config/opencode/opencode.json` |
