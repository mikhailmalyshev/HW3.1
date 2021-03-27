//
//  ColorCirlce.swift
//  HW3.1
//
//  Created by Михаил Малышев on 27.03.2021.
//

import SwiftUI

struct ColorCircle: View {
    let color: Color
    let oppacity: Double
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: 100, height: 100)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
            .opacity(oppacity)
    }
}

struct ColorCircle_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ColorCircle(color: .red, oppacity: 0.3)
        }
    }
}
