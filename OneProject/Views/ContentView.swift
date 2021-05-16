//
//  ContentView.swift
//  OneProject
//
//  Created by Frederik Hjorth on 03/04/2021.
//

import SwiftUI

struct ContentView: View {
    @State var selection: Int? = nil
    
    var body: some View {
            VStack {
                Text("Click & Enjoy")
                    .font(.title)
                    .padding(100)
                Spacer()
                NavigationLink(
                    destination: LoginView(),
                    tag: 1,
                    selection: $selection){
                Button("Login") { self.selection = 1 }
                    .buttonStyle(CustomButtton())
                }
                .padding(.horizontal, 32)
                
                NavigationLink(
                    destination: SignUpView(),
                    tag: 2,
                    selection: $selection){
                Button("Sign Up") { self.selection = 2 }
                    .buttonStyle(CustomButtton())
                }
                .padding(.horizontal, 32)
            }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
