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
                .frame(maxWidth: .infinity)
                .clipShape(.rect(corners: .concentric, isUniform: true))
            Text(superhero.apodo)
                .font(.footnote)
                .bold()
                .lineLimit(1)
                .foregroundStyle(.white)
                
            Text(superhero.nombreReal)
                .font(.caption2)
                .padding(.bottom, 5)
                .lineLimit(1)
                .foregroundStyle(.white)
        }
        .padding(8)
        .background(superhero.tipo.color.opacity(0.5))
        .containerShape(.rect(cornerRadius: 20))
        .accessibilityElement(children: .ignore)
        .accessibilityLabel(superhero.apodo)
    }
}

#Preview {
    SuperHeroCard(superhero: SUPERHEROES[0])
}

