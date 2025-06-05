//
//  HourlyForecastView.swift
//  weatherapp
//
//  Created by Lauren Meintzer on 6/4/25.
//

import SwiftUI

struct WeeklyForecastView: View {
    
    var body: some View {
        ScrollView{
            VStack(alignment: .leading) {
                HStack {
                    Text("10 DAY FORECAST")
                        .font(.system(size: 15, weight: .bold))
                        .font(.caption)
                        .foregroundColor(.white)
                        .padding(10)
                        .padding(.bottom, -10)
                    Spacer()
                }
                
                ForEach(0 ..< 10) { i in
                        WeeklyRowView(number: i)
                            .padding()
                            .frame(height: 70)
                                .border(.white)
                    }
                .foregroundColor(.white)
            }
        }
        .frame(maxWidth: .infinity)
        .background(
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .fill(Color("Background"))
        )
        .padding()
    }
}
            
            
            
        

#Preview {
    WeeklyForecastView()
}

