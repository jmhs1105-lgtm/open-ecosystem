# MCP Operations Agent — Skills

## Skills principales
- Configuración de MCPs.
- JSON validation.
- Seguridad de herramientas.
- Documentación técnica.

## Skills secundarias
- npm/npx.
- OpenCode internals.
- Permisos y scopes.

## Tecnologías que domina
- OpenCode config (`~/.config/opencode/opencode.json`).
- npx.
- JSON.

## Comandos seguros permitidos
- `python3 -m json.tool ~/.config/opencode/opencode.json`
- `cat ~/.config/opencode/opencode.json`
- `npx -y <package> --help`

## Comandos peligrosos que requieren confirmación
- `npm install -g <mcp-package>`
- Editar `~/.config/opencode/opencode.json`.
- Habilitar MCPs que accedan a sistema de archivos o terminal.
