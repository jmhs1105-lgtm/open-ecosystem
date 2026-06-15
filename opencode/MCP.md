# MCP — Model Context Protocol Status

## Configured MCPs

| MCP | Status | Package Required |
|---|---|---|---|
| Filesystem | ⏸️ Disabled | `@modelcontextprotocol/server-filesystem` |
| Safe-Terminal | ⏸️ Disabled | Custom wrapper (built-in) |
| Fetch/Web | ⏸️ Disabled | `@modelcontextprotocol/server-fetch` |
| Playwright | ✅ Enabled | `@playwright/mcp` (uses Chrome instalado) |
| InsForge | ⏸️ Disabled | `@insforge/cli` (via npx) |

## Config Location
`~/.config/opencode/opencode.json` → `mcp` field

## Directories
```
~/harnesses/mcp/
├── filesystem/      # README.md
├── safe-terminal/   # README.md + mcp-wrapper.sh
├── fetch-web/       # README.md
├── playwright/      # README.md
└── insforge/        # README.md
```

## To Enable an MCP

1. Install the required package:
   ```bash
   npm install -g @modelcontextprotocol/server-filesystem
   npm install -g @modelcontextprotocol/server-fetch
   npm install -g @anthropic/mcp-playwright && npx playwright install chromium
   ```
2. Edit `~/.config/opencode/opencode.json`:
   ```json
   "filesystem": {
     "enabled": true,
     "type": "local",
     "command": ["npx", "-y", "@modelcontextprotocol/server-filesystem", "/Users/admin/harnesses"]
   }
   ```
3. Validate JSON and restart OpenCode.

## Built-in Alternatives
OpenCode already has built-in equivalents:
- **Filesystem** → `read`, `write`, `edit`, `glob`, `grep` tools
- **Safe-Terminal** → `bash` tool with `permission: "ask"`
- **Fetch/Web** → `webfetch` tool
- **Playwright** → Not built-in (requires MCP or direct npx)

## Security
- All MCPs start disabled
- Must be explicitly enabled by editing config
- Each MCP's README documents specific security rules
- Playwright MCP has the strictest rules (no purchases, no login, etc.)
