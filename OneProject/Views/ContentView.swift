//
//  ContentView.swift
//  OneProject
//
//  Created by Frederik Hjorth on 03/04/2021.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        VStack {
            Button("Button") { }
                .buttonStyle(CustomButtton())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
