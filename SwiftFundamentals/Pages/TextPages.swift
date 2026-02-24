//
//  TextPages.swift
//  SwiftFundamentals
//
//  Created by Daniel Agustian Yoali on 24/02/26.
//

import SwiftUICore

struct TextPages:View {
    var body: some View {
        VStack(alignment: .center ,spacing: 25) {
            Spacer()
            HStack(spacing: 12){
              
                Text("Hello, World!").padding().background(
                    Color.green, in: RoundedRectangle(
                        cornerRadius: 20
                    )
                )
                Text("Aster Romeo")
                    .foregroundStyle(.white)
                    .fontWeight(.bold)
                    .padding(.vertical, 20)
                    .padding(.horizontal, 30)
                    .background(Color.blue, in: RoundedRectangle(cornerRadius: 8))
                    .shadow( color: Color(red: 0.75, green: 0.28, blue: 0.55), radius: 10,)
                
               
            }
            Spacer().frame(height: 50)
            Text("Alpha Romeo")
                .padding()
                .background(Color.yellow, in: RoundedRectangle(cornerRadius: 8))
                .shadow( color: Color.yellow, radius: 10,)
                
            Text("Testing for Hundred Thousand Rupiah")
                .padding().background(
                    Color(red: 0.25, green: 0.88, blue: 0.75), in: RoundedRectangle(cornerRadius: 8)
                )
            
            Text("Testing for Hundred Thousand Rupiah")
                .padding().background(
                    Color(red: 0.25, green: 0.88, blue: 0.75), in: RoundedRectangle(cornerRadius: 8)
                )
            Spacer()
        }
        .padding()
    }
}
