//
//  SuperHeroDetail.swift
//  MyHeroes
//
//  Created by Guillermo Robinson on 2/11/25.
//

import SwiftUI

struct SuperHeroDetail: View {
    var superhero: SuperHero
    
    @Binding var isFavorite: Bool
    
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
        //            .fill(superhero.tipo.color.gradient)
            .fill(
                LinearGradient(colors: [superhero.tipo.color.opacity(0.4)],
                               startPoint: .top,
                               endPoint: .bottom))
            .ignoresSafeArea()
            .overlay {
                VStack {
                    Text(superhero.apodo)
                        .font(.largeTitle)
                        .bold()
                    
                        .shadow(radius: 1)
                    Image(superhero.imagen)
                        .resizable()
                        .scaledToFit()
                        .shadow(radius: 5)
                    
                    Text("\(superhero.nombreReal) - \(superhero.edad) años")
                        .font(.title3)
                        .italic()
                    
                    RoundedRectangle(cornerRadius: 20, style: .continuous)
                        .fill(superhero.tipo.color.opacity(0.2))
                        .shadow(radius: 1)
                        .frame(height: superhero.descripcion != "" ? 170 : 0)
                        .overlay(alignment: .center) {
                            Text(superhero.descripcion)
                                .font(.headline)
                                .lineLimit(6)
                                .padding()
                        }
                    
                    Text("Poderes")
                        .font(.title)
                        .bold()
                        .underline()
                        .padding(.bottom, 5)
                    Text(superhero.poderes
                        .map { $0.rawValue }
                        .formatted(.list(type: .and, width: .narrow)))
                        .font(.headline)
                }
                
            }
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        isFavorite.toggle()
                    } label: {
                        Image(systemName: isFavorite ? "heart.fill": "heart")
                            .foregroundStyle(isFavorite ? .red : .primary)
                    }
                }
            }
    }
}

#Preview {
    @Previewable @State var isFavorite = true
    SuperHeroDetail(superhero: SUPERHEROES[3], isFavorite: $isFavorite)
}
