//
//  DayWeather.swift
//  UIDesigns
//
//  Created by Guillermo Robinson on 16/11/25.
//

import SwiftUI

struct DayWeather: Identifiable {
    let id = UUID()
    let day: String
    let temperature: String
    let icon: String
    var iconColor: IconColor {
        IconColor(rawValue: icon) ?? .cloud
    }
    
    enum IconColor: String, CaseIterable {
        case sun = "sun.max.fill"
        case cloudSun = "cloud.sun.fill"
        case cloud = "cloud.fill"
        case rain = "cloud.rain.fill"
        case cloudDrizzle = "cloud.drizzle.fill"
        case cloudHeavyrain = "cloud.heavyrain.fill"
        
        var palette: [Color] {
            switch self {
            case .sun:
                [.yellow]
            case .cloudSun:
                [.white, .yellow]
            case .cloud:
                [.white]
            case .rain, .cloudDrizzle, .cloudHeavyrain:
                [.white, .blue]
            }
        }
    }
}
