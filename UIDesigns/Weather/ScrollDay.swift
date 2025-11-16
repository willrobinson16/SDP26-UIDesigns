//
//  ScrollDay.swift
//  UIDesigns
//
//  Created by Guillermo Robinson on 15/11/25.
//

import SwiftUI

struct ScrollDay: View {
    let weatherData: [DayWeather]
    
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(.blue.opacity(0.4).gradient)
            .frame(height: 120)
            .overlay {
                ScrollView(.horizontal) {
                    HStack(alignment: .center, spacing: 25) {
                        ForEach(sampleWeatherData) { weather in
                            VStack(alignment: .center, spacing: 15) {
                                Text(weather.day)
                                    .bold()
                                Image(systemName: weather.icon)
                                    .foregroundStyle(.blue)
                                    .font(.title2)
                                    .frame(width: 30, height: 30)
                                Text(weather.temperature)
                                    .bold()
                            }
                        }
                    }
                }
                .defaultScrollAnchor(.leading)
                .scrollIndicators(.hidden)
                .padding()
            }
    }
}

#Preview {
    ScrollDay(weatherData: sampleWeatherData)
}
