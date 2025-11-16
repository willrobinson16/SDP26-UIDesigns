//
//  DayWeather.swift
//  UIDesigns
//
//  Created by Guillermo Robinson on 16/11/25.
//

import Foundation

struct DayWeather: Identifiable {
    let id = UUID()
    let day: String
    let temperature: String
    let icon: String
}

enum IconColor: String, CaseIterable {
    case sun = "sun.max.fill"
    case cloudSun
    case cloud
    case rain
    case cloudDrizzle
    case cloudHeavyrain
}
