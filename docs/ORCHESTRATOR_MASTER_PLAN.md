# Orchestrator Master Plan

## Execution Order

```
Phase 0: Security + Structure     ✅ Done
Phase 1: Backend Core             ✅ Done
Phase 2: Bots + Automation + Email ✅ Done
Phase 3: Mobile + Design          ✅ Done
Phase 4: Documentation + Quality  ✅ Done
Phase 5: Operations 24/7          ✅ Done
Phase 6: Orchestration + Report   In Progress
```

## What Needs Approval

| Action | Approval |
|---|---|
| Install npm packages (heavy) | Required |
| Deploy to Railway/VPS | Required |
| Send real emails | Required |
| Git push to main | Required (given) |
| Modify opencode.json | Required + backup |
| Delete files | Required + backup |
| Create new projects | Info only |
| Add documentation | Autonomous |

## What NOT to Touch

- `.env` files (except adding new vars)
- `opencode.json` (without snapshot)
- Production databases
- Existing agents (only add new)
- Working scripts

## Dependencies Between Teams

```
Security → All teams (provides .env, Bitwarden)
Orchestrator → All teams (coordinates phases)
Backend API → Bots, Mobile (provides endpoints)
InsForge → Backend API, Bots (provides DB)
Cloud Runtime → Bots (provides deploy)
Design → Mobile (provides UI specs)
QA → All teams (validates code)
```

## Phase Validation

Each phase must:
1. Pass lint + format checks
2. Pass tests (if applicable)
3. Not break existing code
4. Be committed to git
5. Not expose secrets
6. Not deploy to production

## Risk Matrix

| Risk | Severity | Mitigation |
|---|---|---|
| Token exposure | Critical | .gitignore + Bitwarden |
| Config corruption | High | Backup before edits |
| Deploy without approval | High | Explicit gate |
| DB data loss | Critical | InsForge snapshots |
| Bot policy violation | High | Compliance rules |
| API cost spike | Medium | api_usage tracking |
