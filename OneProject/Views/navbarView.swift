//
//  navbarView.swift
//  OneProject
//
//  Created by Frederik Hjorth on 12/04/2021.
//

import SwiftUI

struct navbarView: View {
    
    init() {
        UITabBar.appearance().isTranslucent = false
    }
    
    var body: some View {
        TabView {
            MainView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("First Tab")
                }
            Text("The content of the second view")
                .tabItem {
                    Image(systemName: "cart.fill")
                    Text("second Tab")
                }
            Text("The content of the third view")
                .tabItem {
                    Image(systemName: "person.circle.fill")
                    Text("third Tab")
                }
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarTitle("Choose Event", displayMode: .large)
        .accentColor(.newPrimary)
        
    }
}

struct navbarView_Previews: PreviewProvider {
    static var previews: some View {
        navbarView()
    }
}
