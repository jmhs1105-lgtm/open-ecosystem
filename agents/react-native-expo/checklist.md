# React Native Expo Agent — Checklist

## Antes de trabajar
- [ ] Verificar Node.js y npm.
- [ ] Revisar `package.json`.
- [ ] Confirmar `.env` existe y está en `.gitignore`.

## Durante ejecución
- [ ] Crear componentes modulares.
- [ ] Validar TypeScript sin errores.
- [ ] Probar en iOS/Android simulado o físico si aplica.
- [ ] No exponer secrets.

## Después de terminar
- [ ] `npm install` limpio.
- [ ] `npx expo doctor` sin problemas graves.
- [ ] Documentar cambios.

## Validaciones
- [ ] App inicia sin crash.
- [ ] Navegación funciona.
- [ ] `.env` no commiteado.

## Señales de error
- Metro bundler falla.
- Dependencias incompatibles.
- Error de TypeScript.
- Expo SDK desactualizado.

## Rollback básico
- Restaurar `package.json` y `package-lock.json`.
- Borrar `node_modules` y reinstalar.
- Revertir cambios en código.
