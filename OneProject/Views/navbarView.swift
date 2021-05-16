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
        //UITabBar.appearance().isTranslucent = true
    }
    
    func getUser() {
        self.global.updateUserId(userId: UserDefaults.standard.string(forKey: "userId"))
    }
    
    var body: some View {
        ZStack {
            Group{
                if(global.userId != nil) {
                    TabView {
                        NavigationView{
                            MainView().navigationBarTitle("Events", displayMode: .large)}
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
                        
                        NavigationView{
                            ProfilView().navigationBarTitle("Profil", displayMode: .large)}
                            .tabItem {
                                Image(systemName: "person.circle.fill")
                                Text("Account")
                            }
                            .tag(2)
                    }
                    .accentColor(.newPrimary)
                }
                else {
                    ContentView()
                }
            }
            .onAppear(perform: {
                self.getUser()
            })
        }
    }
}

struct navbarView_Previews: PreviewProvider {
    static var previews: some View {
        navbarView()
    }
}
