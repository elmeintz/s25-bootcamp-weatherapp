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
                gradient: Gradient(colors: [Color("DarkGrad"), Color("Light Grad")]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()
            
            Overview()
            HourlyForecastView()
                .padding(.bottom, 150)
            WeeklyForecastView()
                .padding(.top, 420)
        }
    }
}
struct Overview: View {
    var body: some View {
        ScrollView{
            VStack{
                Text("Chapel Hill")
                    .font(.system(size: 30, design: .rounded)) // or .rounded, .serif, etc.
                    .padding(.bottom, -10)
                    .font(.subheadline)
                    .foregroundColor(.white)
                    .bold()
            }
            .padding(.top)
            HStack{
                Text("55")
                    .font(.system(size: 55, design: .rounded)) // or .rounded, .serif, etc.
                    .foregroundColor(.white)
                    .padding(.bottom, -10)
                Image(systemName: "degreesign.farenheit")
                    .resizable()
                    .frame(width: 35, height:35)
                    .foregroundColor(.white)
                
            }
            HStack{
                Text("Sunny")
                    .foregroundColor(Color("Grayish"))
                    .font(.system(size: 20, design: .rounded))
            }
            HStack{
                Text("H:57")
                    .foregroundColor(.white)
                Image(systemName: "degreesign.farenheit")
                    .foregroundColor(Color("Grayish"))
                Text("L:44")
                    .foregroundColor(.white)
                Image(systemName: "degreesign.farenheit")
                    .foregroundColor(Color("Grayish"))
            }
        }
    }
}

#Preview {
    WeatherView()
}

