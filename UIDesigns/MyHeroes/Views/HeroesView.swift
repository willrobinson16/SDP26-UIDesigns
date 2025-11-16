//
//  HeroesView.swift
//  DiseñoUIs
//
//  Created by Guillermo Robinson on 8/11/25.
//

import SwiftUI

struct HeroesView: View {
    @State private var heroes: [SuperHero] = SUPERHEROES
    @State private var favoritesFilter = false
    
    var filteredByFavorite: [SuperHero] {
        heroes.filter { $0.isFavorite }
    }
    
    let columns: [GridItem] = [GridItem(.adaptive(minimum: 100))]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 10) {
                    Section {
                        ForEach(favoritesFilter ? filteredByFavorite : heroes) { superhero in
                            NavigationLink(value: superhero) {
                                SuperHeroCard(superhero: superhero)
                            }
                            .buttonStyle(.plain)
                        }
                    } header: {
                        Text(favoritesFilter ? "Favoritos" : "Todos")
                    }
                }
                .padding()
            }
            .navigationTitle("My Heroes")
            
            .navigationDestination(for: SuperHero.self, destination: { superhero in
                if let index = heroes.firstIndex(where: { $0.id == superhero.id }) {
                    SuperHeroDetail(superhero: heroes[index], isFavorite: $heroes[index].isFavorite)
                }
            })
            .toolbar {
        
                ToolbarItem(placement: .topBarTrailing) {
                    Menu("Filtros", systemImage: "line.3.horizontal") {
                        /// TODO - Añadir más filtros
                        Button("Favoritos") {
                            favoritesFilter = true
                        }
                        Button("Todos") {
                            favoritesFilter = false
                        }
                    }
                }
            }
            .safeAreaPadding()
        }
    }
}

#Preview("Grid") {
    HeroesView()
}

