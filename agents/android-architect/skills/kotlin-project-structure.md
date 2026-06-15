# Skill: kotlin-project-structure
## Agente dueño: Android Architect Agent
## Categoría: Android / Architecture
## Objetivo: Definir estructura de proyecto Kotlin Android.
## Estructura recomendada
```
app/
├── src/main/
│   ├── java/com/example/app/
│   │   ├── data/          # Repos, datasources
│   │   ├── domain/        # Models, use cases
│   │   ├── ui/            # Screens, ViewModels
│   │   ├── di/            # Dependency injection
│   │   └── utils/
│   ├── res/
│   └── AndroidManifest.xml
├── build.gradle.kts
```
## Estado: adapted
