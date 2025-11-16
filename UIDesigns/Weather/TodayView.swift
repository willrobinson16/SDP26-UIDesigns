//
//  TodayView.swift
//  UIDesigns
//
//  Created by Guillermo Robinson on 16/11/25.
//

import SwiftUI

struct TodayView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(.blue.opacity(0.4).gradient)
            .frame(width: 380, height: 250)
            .overlay {
                HStack(spacing: 15) {
                    VStack {
                        Text("12º")
                            .font(.custom("SF Compact Rounded", size: 100, relativeTo: .largeTitle))
                        Text("Sensación térmica: 13º")
                            .font(.title2)
                            .bold()
                        Text("Máx. 15º Mín. 4º")
                            .font(.title2)
                            .bold()
                    }
                    Image(systemName: "sun.max.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150)
                        .foregroundStyle(.yellow)
                }
            }
    }
}
