//
//  NavigatePlayerButton.swift
//  DiseñoUIs
//
//  Created by Guillermo Robinson on 3/11/25.
//

import SwiftUI

struct NavigatePlayerButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.title2)
            .foregroundStyle(.white)
            .padding()
            .glassEffect(.clear)
    }
}

extension ButtonStyle where Self == NavigatePlayerButton {
    static var navigatePlayerButton: NavigatePlayerButton { .init() }
}
