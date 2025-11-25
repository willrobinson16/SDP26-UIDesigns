//
//  ContentView.swift
//  UIDesigns
//
//  Created by Guillermo Robinson on 9/11/25.
//

import SwiftUI

struct ContentView: View {
    @State private var heroes: [SuperHero] = SUPERHEROES
    
    var body: some View {
        NavigationStack {
            List {
                NavigationLink(destination: MusicPlayer()) {
                    Text("Music Player")
                }
                NavigationLink(destination: WeatherView()) {
                    Text("Weather")
                }
                NavigationLink(destination: HeroesView(heroes: $heroes)) {
                    Text("SuperHeroes")
                }
            }
            .navigationTitle("Apps")
            .navigationDestination(for: SuperHero.self) { superhero in
                if let index = heroes.firstIndex(where: { $0.id == superhero.id }) {
                    SuperHeroDetail(superhero: heroes[index], isFavorite: $heroes[index].isFavorite)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
