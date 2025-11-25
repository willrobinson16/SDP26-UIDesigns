//
//  SuperHeroCard.swift
//  MyHeroes
//
//  Created by Guillermo Robinson on 2/11/25.
//

import SwiftUI

struct SuperHeroCard: View {
    let superhero: SuperHero
    
    var body: some View {
        VStack(alignment: .center) {
            Image(superhero.imagen)
                .resizable()
                .scaledToFit()
                .clipShape(.rect(cornerRadius: 10))
            VStack {
                Text(superhero.apodo)
                    .font(.subheadline)
                    .bold()
                    .lineLimit(1)
                    
                Text(superhero.nombreReal)
                    .font(.caption)
                    .padding(.bottom, 5)
                    .lineLimit(1)
            }
            .frame(width: 100)
        }
        .glassEffect(.clear.tint(.gray.opacity(0.4)).interactive(), in: .rect(cornerRadius: 10, style: .continuous))
        .accessibilityElement(children: .ignore)
        .accessibilityLabel(superhero.apodo)
    }
}

#Preview {
    SuperHeroCard(superhero: SUPERHEROES[0])
}

