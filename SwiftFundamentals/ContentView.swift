//
//  ContentView.swift
//  SwiftFundamentals
//
//  Created by Daniel Agustian Yoali on 24/02/26.
//

import SwiftUI

struct ContentView: View {
    @StateObject var router = Router()

    var body: some View{
        NavigationStack (path: $router.navigationPath){
            VStack{
                ZStack{
                    RoundedRectangle(cornerRadius: 30).frame(width: 150 , height: 150).foregroundStyle(.tint)
                    Image(systemName: "figure.2.and.child.holdinghands").font(.system(size: 85)).foregroundStyle(.white)

                }
               
                Text("Welcome to App")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.top)
                    .padding(.bottom, 10)
                    
                Text("Description text")
                                .font(.title2)
            }.padding()
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
