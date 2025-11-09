//
//  Tipos.swift
//  MyHeroes
//
//  Created by Guillermo Robinson on 2/11/25.
//

import SwiftUI

enum Tipos {
    case tierra, electrico, aire, fuego, metal, agua, oscuro, dios

    var color: Color {
        switch self {
        case .tierra: return .brown
        case .electrico: return .yellow
        case .aire: return .cyan
        case .fuego: return .orange
        case .metal: return .gray
        case .agua: return .blue
        case .oscuro: return .purple
        case .dios: return .indigo
        }
    }
}
