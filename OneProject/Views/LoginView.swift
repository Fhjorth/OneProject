//
//  LoginView.swift
//  OneProject
//
//  Created by Frederik Hjorth on 04/04/2021.
//

import SwiftUI

struct LoginView: View {
    
    @State var email: String = "test@mail.com"
    @State var password: String = "12345678"
    @State var error = false
    @State var loading = false
    @State var isShowing: Bool = false
    @EnvironmentObject var session: SessionStore
    @ObservedObject var
        global = ControllerRegistry.global
    
    init() {
        // Large navitgationBarTitle = .large
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor(Color.newPrimary)]
        // Inline navitgationBarTitle = .inline
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor(Color.newPrimary)]
    }
    
    func getUser() {
        session.list()
    }
    
    func logIn() {
        self.global.updateLoadingState(isLoading: true)
        error = false
        
        session.signIn(email: email, password: password) { (result, error) in
            if error != nil {
                self.error = true
                self.global.updateLoadingState(isLoading: false)
            } else {
                self.email = ""
                self.password = ""
                isShowing = true
        }
    }
}

var body: some View {
    VStack {
        VStack() {
            TextField("Email", text: $email)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(10)
            SecureField("Password", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(10)
            NavigationLink(
                destination: MainView(),
                isActive: $isShowing) {
                EmptyView()
            }
            
            Button("Login") {
                logIn()
            }
            .padding(10)
            .buttonStyle(CustomButtton())
            
        }
    }
    .navigationBarTitle("Sign In", displayMode: .inline)
}
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView().environmentObject(SessionStore())
    }
}
