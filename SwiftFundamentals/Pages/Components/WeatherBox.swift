//
//  WeatherBox.swift
//  SwiftFundamentals
//
//  Created by Daniel Agustian Yoali on 27/04/26.
//

import SwiftUI

struct WeatherBox: View{
    let day: String
    let highTemp: Int
    let lowTemp: Int
    let isRainy: Bool
    
    var iconString: String{
        if isRainy {
            return "cloud.rain.fill"
        }
        return "sun.max.fill"
    }
    
    var iconColor: Color{
        if isRainy {
            return Color.blue
        }
        return Color.yellow
    }
    
    var body: some View{
        VStack {
            Text(day)
                .font(Font.title2).fontWeight(.bold)
                .padding(.bottom, 4)
            
            Image(systemName: iconString).foregroundStyle(iconColor).padding(4)
            Text("High: \(highTemp)").font(.headline)
            Text("Low: \(lowTemp)").font(.headline)
        }.padding()
    }
}
