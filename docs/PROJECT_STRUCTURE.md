# Project Structure — OpenCode Ecosystem

```
~/harnesses/
├── README.md                  # Ecosystem index
├── .env                       # Secrets (gitignored)
├── .env.example               # Template without values
├── .gitignore                 # Git ignore rules
├── .vscode/                   # VS Code config
│   ├── extensions.json        # Recommended extensions
│   └── settings.json          # Editor settings
├── opencode/                  # Ecosystem memory
│   ├── PROJECT_MEMORY.md
│   ├── SESSION_MEMORY.md
│   ├── AGENTS.md
│   ├── HARNESS.md
│   ├── MCP.md
│   ├── SKILLS.md
│   ├── ROADMAP.md
│   ├── RECOVERY.md
│   ├── SECURITY_RULES.md
│   ├── MODELS_ALLOWED.md
│   ├── MODEL_ROUTING.md
│   ├── TOKEN_SAVING_POLICY.md
│   ├── STATUS.md
│   └── KALI_MIGRATION_PLAN.md
├── agents/                    # Agent definitions
│   ├── README.md
│   ├── orchestrator-ai-master/
│   ├── android-architect/
│   ├── react-native-expo/
│   ├── backend-api/
│   ├── insforge/
│   ├── telegram-bot/
│   ├── whatsapp-bot/
│   ├── mcp-operations/
│   ├── cloud-runtime/
│   ├── ai-provider/
│   ├── security-recovery/
│   ├── software-architect/
│   ├── research-agent/
│   └── team-skills-architect/
├── skills/                    # Skills by category
│   ├── README.md
│   ├── security/
│   ├── automation/
│   ├── backend/
│   ├── bots/
│   ├── mobile/
│   ├── design/
│   ├── documentation/
│   ├── code-quality/
│   ├── research/
│   ├── dev-environment/
│   ├── email/
│   └── ... (more categories)
├── projects/                  # Code projects
│   ├── js-agents/
│   │   ├── backend-api/
│   │   └── insforge/
│   ├── android/
│   ├── expo-app/
│   └── railway-deploy/
├── scripts/                   # Operational scripts
├── backups/                   # Timestamped snapshots
├── mcp/                       # MCP configurations
├── docs/                      # Architecture docs
├── logs/                      # Operation logs
└── memory/                    # Additional memory stores
```
