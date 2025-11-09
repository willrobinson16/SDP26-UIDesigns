//
//  ContentView.swift
//  UIDesigns
//
//  Created by Guillermo Robinson on 9/11/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink(destination: MusicPlayer()) {
                    Text("Music Player")
                }
                NavigationLink(destination: HeroesView()) {
                    Text("SuperHeroes")
                }
            }
            .navigationTitle("Apps")
        }
    }
}

#Preview {
    ContentView()
}
