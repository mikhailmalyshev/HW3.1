//
//  ContentView.swift
//  HW3.1
//
//  Created by Михаил Малышев on 27.03.2021.
//

import SwiftUI

enum CurrentLight {
    case red, yellow, green
}

let lightOn = 1.0
let lightOff = 0.3

struct ContentView: View {
    
    @State private var textOnButton = "START"
    @State private var currentLight = CurrentLight.red
    @State private var redLight = lightOff
    @State private var yellowLight = lightOff
    @State private var greenLight = lightOff
    
    var body: some View {
        VStack {
            VStack(spacing: 20.0) {
                ColorCircle(color: .red, oppacity: redLight)
                ColorCircle(color: .yellow, oppacity: yellowLight)
                ColorCircle(color: .green, oppacity: greenLight)
            }
            Spacer()
            Button(action: { startButtonPressed() }) {
                Text("\(textOnButton)")
                    .font(.title)
                    .fontWeight(.bold)
                    .fixedSize()
                    .frame(width: 100, height: 20)
                    .padding(20)
                    .background(Color.blue)
                    .cornerRadius(30)
                    .foregroundColor(.white)
                    .padding(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 35)
                            .stroke(Color.blue, lineWidth: 5)
                    )
            }
            Spacer()
        }
    }
    
    private func startButtonPressed() {
        
        textOnButton = "NEXT"
        
        switch currentLight {
        case .red:
            redLight = lightOn
            greenLight = lightOff
            currentLight = .yellow
        case .yellow:
            yellowLight = lightOn
            redLight = lightOff
            currentLight = .green
        case .green:
            greenLight = lightOn
            yellowLight = lightOff
            currentLight = .red
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
