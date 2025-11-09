# 🎨 UIDesigns - SwiftUI Practice Project

UIDesigns es una aplicación desarrollada como ejercicio práctico del **Swift Developer Program 2026 (Apple Coding Academy)**. El proyecto consiste en una aplicación que contiene múltiples demostraciones de diseño UI, sirviendo como portfolio y proyecto de práctica para diversos patrones de interfaz en SwiftUI.

## 📱 Diseños Implementados

- [x] **Music Player** - Reproductor de música personalizado
- [ ] **Weather App** - Aplicación de clima
- [ ] **Todo List** - Lista de tareas
- [ ] **Card Components** - Componentes de tarjetas reutilizables
- [x] **MyHeroes** - Catálogo de superhéroes con sistema de favoritos

## 🛠️ Stack Tecnológico

- **SwiftUI** - Framework de UI declarativo
- **Xcode** - IDE de desarrollo
- **SF Symbols** - Iconografía nativa de Apple
- **Asset Catalog** - Gestión de recursos e imágenes

## 🏗️ Arquitectura del Proyecto

```
UIDesigns/
├── UIDesignsApp.swift          
├── ContentView.swift           
├── MyHeroes/
│   ├── Model/
│   │   ├── SuperHeroesData.swift   
│   │   ├── Poderes.swift           
│   │   └── Tipos.swift             
│   └── Views/
│       ├── HeroesView.swift        
│       ├── SuperHeroDetail.swift   
│       └── SuperHeroCard.swift     
├── MusicPlayer/
│   ├── MusicPlayer.swift           
│   ├── PlayerButton.swift          
│   └── NavigatePlayerButton.swift  
└── Weather/
    └── WeatherView.swift           
```

## 🚀 Cómo Ejecutar

```bash
# Clonar el repositorio
git clone [URL_DEL_REPO]

# Abrir en Xcode
open UIDesigns.xcodeproj

# O desde línea de comandos
xcodebuild -project UIDesigns.xcodeproj -scheme UIDesigns -destination 'platform=iOS Simulator,name=iPhone 15' run
```

## 💡 Filosofía de Desarrollo

Este proyecto sigue los principios del desarrollo en SwiftUI aprendidos en la formación, mediante buenas prácticas y utilizando únicamente componentes nativos.
