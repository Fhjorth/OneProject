//
//  MainView.swift
//  OneProject
//
//  Created by Frederik Hjorth on 05/04/2021.
//

import SwiftUI

struct MainView: View {
    @EnvironmentObject var session: SessionStore
    var body: some View {
        Text("Hello, MainView!")
        
            .navigationBarHidden(true)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
