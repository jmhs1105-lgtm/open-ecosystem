# React Native Expo Agent — Tools

## Herramientas recomendadas
- Expo CLI vía npx.
- Metro bundler.
- TypeScript.
- React Native Debugger.

## MCPs relacionados
- Playwright MCP — para screenshots de web si aplica.

## Comandos de diagnóstico
```bash
npx expo start
cd project && npx expo doctor
npm ls
```

## Archivos que puede leer
- `~/harnesses/projects/expo-app/**/*.ts`
- `~/harnesses/projects/expo-app/**/*.tsx`
- `~/harnesses/projects/expo-app/app.json`

## Archivos que puede modificar con cuidado
- Componentes TSX.
- `app.json`, `package.json`.
- `.env.example` (no `.env`).

## Archivos prohibidos sin permiso
- `.env` con secrets.
- Credentials de app stores.
