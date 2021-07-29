//
//  navbarView.swift
//  OneProject
//
//  Created by Frederik Hjorth on 12/04/2021.
//

import SwiftUI

struct navbarView: View {
    @EnvironmentObject var session: SessionStore
    @ObservedObject var global = ControllerRegistry.global

    init() {
        UITabBar.appearance().isTranslucent = false
    }
    
    func getUser() {
        
    }
    
    var body: some View {
        ZStack {
            Group{
                TabView {
                        MainView().navigationBarTitle("Choose Event", displayMode: .large)
                        .tabItem {
                            Image(systemName: "house.fill")
                            Text("Event")
                        }.tag(0)
                    
                        Text("The content of the second view")
                            .navigationBarTitle("Order", displayMode: .large)
                        .tabItem {
                            Image(systemName: "cart.fill")
                            Text("Order")
                        }.tag(1)
                    
                    Text("The content of the third view")
                        .tabItem {
                            Image(systemName: "person.circle.fill")
                            Text("Account")
                        }
                }
                //.navigationBarBackButtonHidden(true)
                .accentColor(.newPrimary)
            }
        }
    }
}

struct navbarView_Previews: PreviewProvider {
    static var previews: some View {
        navbarView()
    }
}
