# OpenCode Ecosystem

AI-assisted development platform with 14 specialized agents, multi-project support, 24/7 runtime, and cloud memory.

## Quick Start

```bash
~/harnesses/scripts/ocharness-check   # Ecosystem health
~/harnesses/scripts/ocagents-check    # Agents validation
~/harnesses/scripts/ocskills-check    # Skills validation
```

## Structure

| Path | Purpose |
|---|---|
| `opencode/` | Ecosystem memory, rules, roadmaps |
| `agents/` | 14 specialized AI agent definitions |
| `skills/` | Skills by category (20 categories) |
| `projects/` | Active code projects |
| `scripts/` | Operational scripts |
| `backups/` | Timestamped snapshots |
| `docs/` | Architecture and plans |
| `mcp/` | MCP server configurations |
| `logs/` | Operation logs |

## Projects

| Project | Status |
|---|---|
| Backend API (Express 5) | In progress |
| InsForge (DB/Cloud Memory) | In progress |
| Android App | Planned |
| Expo App | Planned |
| Railway Deploy | Planned |

## Security

- All API keys in `.env` (gitignored)
- Use `.env.example` as template without values
- Never commit secrets
- Backup before config changes
