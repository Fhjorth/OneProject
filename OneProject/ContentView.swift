//
//  ContentView.swift
//  OneProject
//
//  Created by Frederik Hjorth on 03/04/2021.
//

import SwiftUI

struct ContentView: View {
    @StateObject var settings = Config()

    var body: some View {
        Text("hej, world!")
            .padding()
        
        Text("Score: \(settings.HTTP_STATUS_OK)")

                .background(Color.blue)

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
