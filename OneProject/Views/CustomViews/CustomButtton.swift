//
//  CustomButtton.swift
//  OneProject
//
//  Created by Frederik Hjorth on 04/04/2021.
//

import SwiftUI

//inspiration from https://swiftwithmajid.com/2020/02/19/mastering-buttons-in-swiftui/

struct CustomButtton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .font(.system(size: 14, weight: .semibold))
            .foregroundColor(configuration.isPressed ? Color.inactive : Color.white)
            .padding()
            .frame(minWidth: 0, maxWidth: .infinity, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .frame(height: 60)
            //.background(LinearGradient(gradient: Gradient(colors: [Color.newPrimary, Color.secondary]), startPoint: .trailing, endPoint: .leading))
            .background(Color.newPrimary)
            .cornerRadius(8)
    }
}
