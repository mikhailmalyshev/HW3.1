//
//  Circle.swift
//  HW3.1
//
//  Created by Михаил Малышев on 27.03.2021.
//

import SwiftUI

import SwiftUI

struct Circle: View {
    let color: Color
    var body: some View {
        Circle()
//            .ignoresSafeArea() // Лишний
            .foregroundColor(color)
            .frame(width: 250, height: 250)
//            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
        
    }
}

struct ColorCircle_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ColorCircle(color: .red)
            ColorCircle(color: .red)
        }
    }
}
