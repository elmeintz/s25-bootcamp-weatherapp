//
//  HourlyForecastView.swift
//  weatherapp
//
//  Created by Lauren Meintzer on 6/4/25.
//

import SwiftUI

struct HourlyForecastView: View {
    
    var body: some View {
        ScrollView(.horizontal) {
            VStack(alignment: .leading) {
                HStack {
                    Text("HOURLY FORECAST")
                        .font(.system(size: 15, weight: .bold))
                        .font(.caption)
                        .foregroundColor(.white)
                        .padding(10)
                        .padding(.bottom, -10)
                    Spacer()
                }
                
                HStack {
                    ForEach(0 ..< 6) { i in
                        HourlyRowView(hour: i)
                    }
                }
                .foregroundColor(.white)
            }
        }
        .padding(.bottom, 10)
        .frame(maxWidth: .infinity)
        .background(
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .fill(Color("Background"))
        )
        .padding()
    }
}
            
            
            
        

#Preview {
    HourlyForecastView()
}
