//
//  WeatherView.swift
//  weatherapp
//
//  Created by Lauren Meintzer on 2/18/25.
//

import SwiftUI

struct WeatherView: View {
    var body: some View {
        ZStack{
            LinearGradient(
                gradient: Gradient(colors: [
                    Color(red: 0.2, green: 0.5, blue: 1.0),  // pastel/light green
                    Color(red: 0.0, green: 0.4, blue: 0.9) // dark green
                ]),
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()
            
            VStack {
                Overview()
                Spacer()
                HourlyForecastView(title: "Option 1")
                HourlyRowView()
                WeeklyForecastView()
                WeeklyRowView()
            }
        }
    }
}
struct Overview: View {
    
    var body: some View {
        VStack{
            Text("Chapel Hill")
                .font(.subheadline)
                .foregroundColor(.white)
                .bold()
        }
        HStack{
            Text("55")
                .foregroundColor(.white)
            Image(systemName: "degreesign.farenheit")
                .foregroundColor(.white)
            
        }
        HStack{
            Text("Sunny")
                .foregroundColor(.gray)
        }
        HStack{
            Text("H:57")
                .foregroundColor(.white)
            Image(systemName: "degreesign.farenheit")
                .foregroundColor(.white)
            Text("L:44")
                .foregroundColor(.white)
            Image(systemName: "degreesign.farenheit")
                .foregroundColor(.white)
        }
    }
    
}
struct HourlyForecastView: View {
    var title: String
    
    var body: some View {
        HStack {
                Text(title)
                
                Button {
                    // some action
                } label: {
                    Text("Click me!")
                }
        }
    }
}

struct HourlyRowView: View {
    
    var body: some View {
        HStack {
                
                Button {
                    // some action
                } label: {
                    Text("Click me!")
                }
        }
    }
}

struct WeeklyForecastView: View {
    var body: some View {
        HStack {
                
                Button {
                    // some action
                } label: {
                    Text("Click me!")
                }
        }
    }
}

struct WeeklyRowView: View {
    
    var body: some View {
        HStack {
                
                Button {
                    // some action
                } label: {
                    Text("Click me!")
                }
        }
    }
}
#Preview {
    WeatherView()
}

