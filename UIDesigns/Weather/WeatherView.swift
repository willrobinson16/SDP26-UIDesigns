//
//  WeatherView.swift
//  UIDesigns
//
//  Created by Guillermo Robinson on 10/11/25.
//

import SwiftUI

struct WeatherView: View {
    var body: some View {
        ZStack {
            LinearGradient(colors: [.blue, .white], startPoint: .topTrailing, endPoint: .bottomLeading)
                .ignoresSafeArea()
            VStack {
                Label("CASA", systemImage: "paperplane.fill")
                    .bold()
                Text("Madrid")
                    .font(.largeTitle)
                ScrollView {
                    VStack {
                        RoundedRectangle(cornerRadius: 20)
                            .fill(.white.opacity(0.4))
                            .frame(width: 380, height: 250)
                            .overlay {
                                HStack(spacing: 15) {
                                    VStack {
                                        Text("10º")
                                            .font(.custom("SF Compact Rounded", size: 100, relativeTo: .largeTitle))
                                        Text("Sensación térmica: 13º")
                                            .font(.title2)
                                            .bold()
                                        Text("Máx. 15º Mín. 4º")
                                            .font(.title2)
                                            .bold()
                                    }
                                    Image(systemName: "cloud.sun.fill")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 150)
                                        .foregroundStyle(.white, .yellow)
                                }
                            }
                        RoundedRectangle(cornerRadius: 20)
                            .fill(.white.opacity(0.4))
                            .frame(width: 380, height: 250)
                            .overlay {
                                ScrollView(.horizontal) {
                                    HStack {
                                        
                                    }
                                }
                            }
                    }
                    .shadow(radius: 2)
                    .padding()
                }
            }
            .padding()
            .foregroundStyle(.white)
        }
        .safeAreaPadding()
    }
}

#Preview {
    WeatherView()
}
