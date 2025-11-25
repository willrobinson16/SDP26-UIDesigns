//
//  WeekView.swift
//  UIDesigns
//
//  Created by Guillermo Robinson on 25/11/25.
//

import SwiftUI

struct WeekView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(.blue.opacity(0.4).gradient)
            .frame(height: 250)
            .overlay {
                VStack(spacing: 16) {
                    ForEach(sampleWeekData) { day in
                        HStack {
                            Text(day.day)
                                .bold()
                            Spacer()
                            Text("\(day.minTemperature.formatted())º")
                            ProgressView(value: day.currentTemperature, total: day.maxTemperature)
                                .frame(width: 150)
                            Text("\(day.maxTemperature.formatted())º")
                        }
                    }
                }
                .padding()
            }
    }
}

#Preview {
    WeekView()
}
