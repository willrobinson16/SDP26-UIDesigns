//
//  NavigatePlayerButton.swift
//  DiseñoUIs
//
//  Created by Guillermo Robinson on 3/11/25.
//

import SwiftUI

struct NavigatePlayerButton: View {
    let textButton: String
    var body: some View {
        Button {
            
        } label: {
            Text(textButton)
                .font(.title2)
                .foregroundStyle(.white)
                .padding()
        }
        .glassEffect(.clear)
    }
}

#Preview {
    NavigatePlayerButton(textButton: "Explorar")
        .background(.black)
}
