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
            Text("App Name")
                .font(.title)
                .padding(100)
            Spacer()
            Button("Login") { }
                .buttonStyle(CustomButtton())
            Button("Sign Up") {}
                .buttonStyle(CustomButtton())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
