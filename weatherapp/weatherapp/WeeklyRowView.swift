//
//  HourlyRowView.swift
//  weatherapp
//
//  Created by Lauren Meintzer on 6/4/25.
//

import SwiftUI

struct WeeklyRowView: View {
    let number: Int
    let selectedSymbolName: String
        
    static let weatherSymbols = [
            "cloud.sun.fill",
            "cloud.rain.fill",
            "cloud.snow.fill",
            "sun.max.fill",
            "cloud.bolt.fill",
            "wind",
            "cloud.fog.fill",
            "cloud.hail.fill",
            "cloud.drizzle.fill",
            "thermometer.sun.fill",
            "moon.stars.fill"
        ]
    let day = ["Today", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun","Mon", "Tue"]
    let temperatures1: [Int] = [23,30,33,36,27,22,44,41,39,35]
    let temperatures2: [Int] = [45, 48, 50, 51, 53, 42, 60, 63, 58, 49]
        
    init(number: Int) {
        self.number = number
        self.selectedSymbolName = Self.weatherSymbols.randomElement() ?? "questionmark"
    }
        
    var body: some View {
        HStack{
            Text(day[number])
                .foregroundColor(.white)
                .fontWeight(.bold)
            Image(systemName: selectedSymbolName)
                .resizable()
                .scaledToFit()
                .frame(width: 60, height: 60)
                .foregroundColor(.white)
                .padding()
            Text("\(temperatures1[number])")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
            Image(systemName: "degreesign.farenheit")
                    .resizable()
                    .frame(width: 15, height:15)
                    .foregroundColor(.white)
                    .fontWeight(.bold)
            Text("\(temperatures2[number])")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
            Image(systemName: "degreesign.farenheit")
                    .resizable()
                    .frame(width: 15, height:15)
                    .foregroundColor(.white)
                    .fontWeight(.bold)
            }
        .frame(maxWidth: .infinity, alignment: .leading)
        .frame(height:55)
        .scaleEffect(0.8)
        }
}


#Preview {
    WeeklyRowView(number: 0)
}

