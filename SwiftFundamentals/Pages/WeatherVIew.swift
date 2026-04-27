//
//  WeatherView.swift
//  SwiftFundamentals
//
//  Created by Daniel Agustian Yoali on 24/02/26.
//

import SwiftUI


struct WeatherView: View {
    var body: some View {
        HStack{
            WeatherBox(day: "Mon", highTemp: 70, lowTemp: 50, isRainy: true)
            WeatherBox(day: "Tue",  highTemp: 60, lowTemp: 40, isRainy: false,)
        }
        
    }
}

