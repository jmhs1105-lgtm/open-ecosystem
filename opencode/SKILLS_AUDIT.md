# Skills Audit — OpenCode Ecosystem

**Date**: 2026-06-15 01:22
**Auditor**: Orchestrator AI Master Agent

---

## Current State Summary

| Area | Status | Details |
|---|---|---|
| `~/harnesses/skills/` | 15 directories | Each has 1 placeholder README.md |
| `agents/*/skills.md` | 14 files | General content, 27-54 lines each |
| `agents/*/skills/` | 0 directories | No individual skill files exist |
| `SKILL_INDEX.md` | ❌ Missing | No global index |
| `SKILL_ROADMAP.md` | ❌ Missing | No roadmap |
| `SKILLS_REPORT.md` | ❌ Missing | No report |
| **Total real skills** | **0** | All placeholders |

---

## Audit by Agent

| Agent | skills.md lines | Has skills/ dir | Individual skills | Quality |
|---|---|---|---|---|
| orchestrator-ai-master | 42 | ❌ | 0 | Good structure, needs details |
| android-architect | 40 | ❌ | 0 | Good list, needs individual skills |
| react-native-expo | 34 | ❌ | 0 | Good list, needs individual skills |
| backend-api | 34 | ❌ | 0 | Good list, needs individual skills |
| insforge | 30 | ❌ | 0 | Good list, needs individual skills |
| telegram-bot | 32 | ❌ | 0 | Good list, needs individual skills |
| whatsapp-bot | 27 | ❌ | 0 | Minimal, needs expansion |
| mcp-operations | 27 | ❌ | 0 | Minimal, needs expansion |
| cloud-runtime | 34 | ❌ | 0 | Good list, needs individual skills |
| ai-provider | 33 | ❌ | 0 | Good list, needs individual skills |
| security-recovery | 32 | ❌ | 0 | Good list, needs individual skills |
| software-architect | 33 | ❌ | 0 | Good list, needs individual skills |
| research-agent | 30 | ❌ | 0 | Good list, needs individual skills |
| team-skills-architect | 54 | ❌ | 0 | Best quality — senior multi-specialty |

---

## Skills Categories Status

| # | Category | Dir exists | Content | Needs |
|---|---|---|---|---|
| 1 | android | ✅ | placeholder | SKILL.md + skills |
| 2 | react-native-expo | ✅ | placeholder | SKILL.md + skills |
| 3 | bots | ✅ | placeholder | SKILL.md + skills |
| 4 | backend | ✅ | placeholder | SKILL.md + skills |
| 5 | insforge | ✅ | placeholder | SKILL.md + skills |
| 6 | railway | ✅ | placeholder | SKILL.md + skills |
| 7 | vps | ✅ | placeholder | SKILL.md + skills |
| 8 | mcp | ✅ | placeholder | SKILL.md + skills |
| 9 | testing | ✅ | placeholder | SKILL.md + skills |
| 10 | security-defensive | ✅ | placeholder | SKILL.md + skills |
| 11 | ai-providers | ✅ | placeholder | SKILL.md + skills |
| 12 | automation | ✅ | placeholder | SKILL.md + skills |
| 13 | affiliate-marketing | ✅ | placeholder | SKILL.md + skills |
| 14 | docs | ✅ | placeholder | SKILL.md + skills |
| 15 | observability | ✅ | placeholder | SKILL.md + skills |

---

## Duplicated Skills Found

| Skill | Present in |
|---|---|
| InsForge integration | insforge, backend-api, telegram-bot, whatsapp-bot |
| Health checks | cloud-runtime, mcp-operations |
| Docker | cloud-runtime, backend-api |
| JWT auth | backend-api, insforge |
| Logs estructurados | backend-api, cloud-runtime, telegram-bot, whatsapp-bot |
| Railway deploy | cloud-runtime, telegram-bot |

**Resolution**: Each skill belongs to one primary agent. Cross-references are OK but the canonical skill file lives in one agent's `skills/` directory.

---

## Recommendations

1. **Create `agents/*/skills/` directories** — each agent gets its own skills subdirectory
2. **Create individual skill .md files** — one per important workflow
3. **Enrich `skills.md` files** — keep as index/overview, not detailed workflows
4. **Create `SKILL_INDEX.md`** — global index of all skills
5. **Create `SKILL_ROADMAP.md`** — prioritized plan for skill creation
6. **Don't duplicate** — each skill has one canonical owner
7. **Start with Nivel 1 critical skills** — safety, backup, MCP health, Android debug

---

## Safety Assessment

| Check | Result |
|---|---|
| Secrets in skills.md files | ✅ None |
| Dangerous commands in skills.md | ✅ None |
| opencode.json modified | ✅ Not touched |
| Files deleted | ✅ None |
| Packages installed | ✅ None |

---

## Next Step

Proceed with FASE 2 (Taxonomy) → FASE 3 (Structure) → then Nivel 1 critical skills (~25 files).
