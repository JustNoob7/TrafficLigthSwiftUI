//
//  ContentView.swift
//  TrafficLigthSwiftUI
//
//  Created by Ярослав Бойко on 26.10.2021.
//

import SwiftUI

enum CurrentLight {
    case red, yellow, green
}

struct ContentView: View {
    
    @State private var buttonText = "START"
    
    @State private var redLightState = 0.3
    @State private var yellowLightState = 0.3
    @State private var greenLightState = 0.3
    
    @State private var currentLight = CurrentLight.red
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack(spacing: 15) {
                CircleView(color: .red, opacity: redLightState)
                CircleView(color: .yellow, opacity: yellowLightState)
                CircleView(color: .green, opacity: greenLightState)
                
                Spacer()
                
                ChangeColorButton(title: buttonText,
                                  action: changeColor)
            }
            .padding()
        }
    }
    
    private func changeColor() {
        let lightIsOn = 1.0
        let lightIsOff = 0.3
        
        if buttonText == "START" {
            buttonText = "NEXT"
        }
        
        switch currentLight {
        case .red:
            currentLight = .yellow
            redLightState = lightIsOn
            greenLightState = lightIsOff
        case .yellow:
            currentLight = . green
            yellowLightState = lightIsOn
            redLightState = lightIsOff
        default:
            currentLight = .red
            greenLightState = lightIsOn
            yellowLightState = lightIsOff
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
