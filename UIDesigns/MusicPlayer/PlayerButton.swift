//
//  PlayerButton.swift
//  DiseñoUIs
//
//  Created by Guillermo Robinson on 3/11/25.
//

import SwiftUI

struct PlayerButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundStyle(.white)
            .padding(20)
            .background {
                Circle()
                    .glassEffect(.clear)
                    
            }
    }
}

extension ButtonStyle where Self == PlayerButton {
    static var playerButton: PlayerButton { .init() }
}
