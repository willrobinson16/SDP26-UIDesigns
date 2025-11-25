//
//  SampleData.swift
//  UIDesigns
//
//  Created by Guillermo Robinson on 16/11/25.
//

import Foundation

let sampleWeatherData: [DayWeather] = [
    DayWeather(day: "Lun", temperature: "12º", icon: "sun.max.fill"),
    DayWeather(day: "Mar", temperature: "15º", icon: "cloud.sun.fill"),
    DayWeather(day: "Mié", temperature: "8º", icon: "cloud.rain.fill"),
    DayWeather(day: "Jue", temperature: "6º", icon: "cloud.snow.fill"),
    DayWeather(day: "Vie", temperature: "10º", icon: "cloud.fill"),
    DayWeather(day: "Sáb", temperature: "18º", icon: "sun.max.fill"),
    DayWeather(day: "Dom", temperature: "20º", icon: "sun.max.fill"),
    DayWeather(day: "Lun", temperature: "14º", icon: "cloud.sun.fill"),
    DayWeather(day: "Mar", temperature: "11º", icon: "cloud.drizzle.fill"),
    DayWeather(day: "Mié", temperature: "9º", icon: "cloud.heavyrain.fill")
]

struct WeatherDay: Identifiable {
    let id = UUID()
    let day: String
    let minTemperature: Double
    let maxTemperature: Double
    let currentTemperature: Double
}

let sampleWeekData: [WeatherDay] = [
    WeatherDay(day: "Lun", minTemperature: 8, maxTemperature: 16, currentTemperature: 12),
    WeatherDay(day: "Mar", minTemperature: 10, maxTemperature: 20, currentTemperature: 15),
    WeatherDay(day: "Mié", minTemperature: 4, maxTemperature: 12, currentTemperature: 8),
    WeatherDay(day: "Jue", minTemperature: 2, maxTemperature: 10, currentTemperature: 6),
    WeatherDay(day: "Vie", minTemperature: 6, maxTemperature: 14, currentTemperature: 10),
    WeatherDay(day: "Sáb", minTemperature: 12, maxTemperature: 24, currentTemperature: 18),
    WeatherDay(day: "Dom", minTemperature: 15, maxTemperature: 25, currentTemperature: 20)
]

