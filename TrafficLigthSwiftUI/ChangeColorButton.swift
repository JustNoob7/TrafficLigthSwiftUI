//
//  ChangeColorButton.swift
//  TrafficLigthSwiftUI
//
//  Created by Ярослав Бойко on 29.10.2021.
//

import SwiftUI

struct ChangeColorButton: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.blue)
        }
        .frame(width: 150, height: 50)
        .background(Color.white)
        .cornerRadius(15)
        .overlay(
            RoundedRectangle(cornerRadius: 15)
                .stroke(Color.blue, lineWidth:  3)
        )
    }
}


struct ChangeColorButton_Previews: PreviewProvider {
    static var previews: some View {
        ChangeColorButton(title: "START", action: {})
    }
}
