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
        ScrollView {
            VStack(spacing: 0) {
                Image(superhero.imagen)
                    .resizable()
                    .scaledToFill()
                    .frame(height: 400)
                    .clipped()
                
                VStack(spacing: 16) {
                    Text(superhero.apodo)
                        .font(.system(size: 36, weight: .black, design: .rounded))
                        .multilineTextAlignment(.center)
                        .shadow(radius: 2)
                        .padding(.top, 20)
                    
                    Text("\(superhero.nombreReal) - \(superhero.edad) años")
                        .font(.title3)
                        .italic()
                        .foregroundStyle(.secondary)

                    if !superhero.descripcion.isEmpty {
                        Text(superhero.descripcion)
                            .font(.headline)
                            .lineLimit(6)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background {
                                RoundedRectangle(cornerRadius: 20, style: .continuous)
                                    .fill(.black.opacity(0.5))
                            }
                            .shadow(radius: 1)
                            .padding(.horizontal)
                    }
                    
                    VStack(spacing: 12) {
                        HStack {
                            Image(systemName: "bolt.fill")
                                .font(.title2)
                                .foregroundStyle(.yellow)
                            Text("Poderes")
                                .font(.title2)
                                .bold()
                            Image(systemName: "bolt.fill")
                                .font(.title2)
                                .foregroundStyle(.yellow)
                        }
                        .padding(.top, 8)
                        
                        VStack(alignment: .leading, spacing: 8) {
                            ForEach(superhero.poderes, id: \.self) { poder in
                                HStack(spacing: 12) {
                                    Image(systemName: "star.fill")
                                        .foregroundStyle(.orange)
                                        .font(.caption)
                                    Text(poder.rawValue)
                                        .font(.body)
                                        .bold()
                                    Spacer()
                                }
                                .padding(.vertical, 8)
                                .padding(.horizontal, 16)
                                .background {
                                    RoundedRectangle(cornerRadius: 12)
                                        .fill(.ultraThinMaterial)
                                }
                            }
                        }
                        .padding(.horizontal)
                    }
                    .padding(.bottom, 20)
                }
            }
        }
        .background {
            RoundedRectangle(cornerRadius: 10)
                .fill(.gray.opacity(0.4))
                .ignoresSafeArea()
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
