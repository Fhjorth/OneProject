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
    
    func getUser() {
        self.global.updateUserId(userId: UserDefaults.standard.string(forKey: "userId"))
    }
    
    var body: some View {
        ZStack {
            if(global.userId != nil) {
                TabView {
                    NavigationView{
                        MainView().navigationBarTitle("Events", displayMode: .large)}
                        .tabItem {
                            Label("Event", systemImage: "house.fill")
                        }.tag(0)
                    
                    NavigationView{
                        OrderView().navigationBarTitle("Order", displayMode: .large)}
                        .tabItem {
                            Label("Order", systemImage: "cart.fill")
                        }.tag(1)
                    
                    NavigationView{
                        ProfilView().navigationBarTitle("Profil", displayMode: .large)}
                        .tabItem {
                            Label("Account", systemImage: "person.circle.fill")
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

//struct navbarView_Previews: PreviewProvider {
//    static var previews: some View {
//        navbarView()
//    }
//}
