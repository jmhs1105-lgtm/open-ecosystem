# Software Architect Agent — Tools

## Herramientas recomendadas
- OpenCode read/edit.
- Diagramas en Markdown/Mermaid.
- `tree` para visualizar estructura.

## MCPs relacionados
- Filesystem MCP (si habilitado).

## Comandos de diagnóstico
```bash
find ~/harnesses/projects -type f | head -50
tree ~/harnesses/projects -L 3 2>/dev/null || find ~/harnesses/projects -maxdepth 3 -type d
```

## Archivos que puede leer
- Todo el código del proyecto.
- `README.md`.
- `package.json`.
- Configs.

## Archivos que puede modificar con cuidado
- Estructura de carpetas (con confirmación).
- Documentación de arquitectura.
- READMEs.

## Archivos prohibidos sin permiso
- Código de producción sin plan.
- `.env`.
