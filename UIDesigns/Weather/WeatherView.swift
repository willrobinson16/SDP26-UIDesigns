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
                        TodayView()
                        ScrollDay(weatherData: sampleWeatherData)
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
