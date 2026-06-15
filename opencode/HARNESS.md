# HARNESS — Ecosystem Structure

## Directory Layout

```
~/harnesses/
├── opencode/          # Memory, agents, docs, rules
│   ├── PROJECT_MEMORY.md
│   ├── AGENTS.md
│   ├── HARNESS.md
│   ├── MCP.md
│   ├── SKILLS.md
│   ├── ROADMAP.md
│   ├── RECOVERY.md
│   ├── SECURITY_RULES.md
│   ├── STATUS.md
│   └── KALI_MIGRATION_PLAN.md
├── projects/          # Code projects
├── backups/           # System snapshots
├── skills/            # OpenCode skills by category
├── logs/              # Operation logs
├── memory/            # Additional memory stores
├── agents/            # Agent definitions
├── scripts/           # ocstart, ocsave, ocdoctor, etc.
├── mcp/               # MCP configurations
└── docs/              # Reference documentation
```

## OpenCode Config

- **Primary config**: `~/.config/opencode/opencode.json`
- **Plugin**: `@opencode-ai/plugin` v1.16.2 (installed)
- **State**: `~/.local/share/opencode/`
- **Runtime state**: `~/.local/state/opencode/`
- **Desktop app**: `~/Library/Application Support/ai.opencode.desktop/`

## Version

- OpenCode CLI: 1.16.2
- Platform: macOS 26.3 (Intel x86_64)
- Shell: zsh
