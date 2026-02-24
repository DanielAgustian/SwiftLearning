//
//  ContentView.swift
//  SwiftFundamentals
//
//  Created by Daniel Agustian Yoali on 24/02/26.
//

import SwiftUI

struct ContentView: View {
    @StateObject var router = Router()
    var body: some View {
        NavigationStack (path: $router.navigationPath){
            VStack(spacing: 20){
                Text("Home Page")
                    .font(.title)
                Button(action: {
                    router.navigate(to: .textPage)
                }) {
                    Text("Go to Text Page")
                }
                Button(action: {
                    router.navigate(to: .weather)
                }) {
                    Text("Go to Weather Page")
                }
            }
            .navigationTitle("Test")
            .navigationDestination(for: Routes.self) { route in
                switch route {
                case .home:
                    Text("Home").navigationTitle("Home")
                case .textPage:
                    TextPages()
                case .weather:
                    WeatherView()
                }
                
            }
        }
    }
}
#Preview {
    ContentView()
}
