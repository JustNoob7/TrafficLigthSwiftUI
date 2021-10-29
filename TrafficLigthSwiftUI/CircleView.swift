//
//  CircleView.swift
//  TrafficLigthSwiftUI
//
//  Created by Ярослав Бойко on 26.10.2021.
//

import SwiftUI

struct CircleView: View {
    let color: Color
    var opacity: Double
    
    var body: some View {
        Circle()
            .frame(width: 100, height: 100)
            .foregroundColor(color)
            .opacity(opacity)
            .overlay(Circle().stroke(.white ,lineWidth: 3))
    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        CircleView(color: .red, opacity: 1)
    }
}
