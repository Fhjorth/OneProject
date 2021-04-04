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
            .foregroundColor(configuration.isPressed ? Color.inactive : Color.white)
            .padding()
            .background(Color.newPrimary)
            .cornerRadius(8)
    }
}
