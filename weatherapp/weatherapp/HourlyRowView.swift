//
//  HourlyRowView.swift
//  weatherapp
//
//  Created by Lauren Meintzer on 6/4/25.
//

import SwiftUI

struct HourlyRowView: View {
    let hour: Int
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
    let times = ["Now", "1PM", "2PM", "3PM", "4PM", "5PM"]
    let temperatures: [Int] = [80, 75, 70, 65, 60, 55]
        
    init(hour: Int) {
        self.hour = hour
        self.selectedSymbolName = Self.weatherSymbols.randomElement() ?? "questionmark"
    }
        
    var body: some View {
        VStack{
            Text(times[hour])
                .foregroundColor(.white)
                .fontWeight(.bold)
            Image(systemName: selectedSymbolName)
                .resizable()
                .scaledToFit()
                .frame(width: 60, height: 60)
                .foregroundColor(.white)
                .padding()
            HStack{
                Text("\(temperatures[hour])")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                Image(systemName: "degreesign.farenheit")
                    .resizable()
                    .frame(width: 15, height:15)
                    .foregroundColor(.white)
                    .fontWeight(.bold)
            }
        }
        //.background(Color("Grayish"))
        .scaleEffect(0.8)
    }
}


#Preview {
    HourlyRowView(hour: 0)
}
