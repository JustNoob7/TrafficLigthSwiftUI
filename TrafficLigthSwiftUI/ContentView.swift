//
//  ContentView.swift
//  TrafficLigthSwiftUI
//
//  Created by Ярослав Бойко on 26.10.2021.
//

import SwiftUI

struct ContentView: View {
    
    private let fullOpacity = 1.0
    private let weakOpacity = 0.3
    
    @State private var buttonText = "START"
    @State private var redCircle = CircleView(color: .red, opacity: 0.3)
    @State private var yellowCircle = CircleView(color: .yellow, opacity: 0.3)
    @State private var greenCircle = CircleView(color: .green, opacity: 0.3)
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack {
                redCircle
                    .padding(.bottom, 10.0)
                yellowCircle
                    .padding(.bottom, 10.0)
                greenCircle
                
                Spacer()
                
                Button {
                    changeColor()
                } label: {
                    Text(buttonText)
                        .font(.largeTitle)
                }
                .frame(width: 150, height: 50)
                .background(Color.white)
                .cornerRadius(10)
            }
            .padding(.bottom)
            .padding(.top)
        }
    }
    
    private func changeColor() {
        if buttonText == "START" {
            buttonText = "NEXT"
        }
        
        switch redCircle.opacity {
        case yellowCircle.opacity:
            redCircle.opacity = fullOpacity
            greenCircle.opacity = weakOpacity
        case greenCircle.opacity:
            greenCircle.opacity = fullOpacity
            yellowCircle.opacity = weakOpacity
        default:
            yellowCircle.opacity = fullOpacity
            redCircle.opacity = weakOpacity
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
