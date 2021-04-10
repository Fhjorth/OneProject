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
        VStack() {
            Text("Welcome Back!")
                .font(.system(size: 32, weight: .heavy))
            Text("Sign in to continue")
                .font(.system(size: 18, weight: .medium))
                .foregroundColor(Color("Inactive"))
            
            VStack(spacing: 18) {
                TextField("Email", text: $email)
                    .font(.system(size: 14))
                    .padding(12)
                    .background(RoundedRectangle(cornerRadius: 5).strokeBorder(Color(.black), lineWidth: 1))
                SecureField("Password", text: $password)
                    .font(.system(size: 14))
                    .padding(12)
                    .background(RoundedRectangle(cornerRadius: 5).strokeBorder(Color(.black), lineWidth: 1))
                NavigationLink(
                    destination: MainView(),
                    isActive: $isShowing) {
                    EmptyView()
                }
            }
            .padding(.vertical, 64)
            
            Button("Login") {
                logIn()
            }
            .buttonStyle(CustomButtton())
        }
        .padding(.horizontal, 32)
        .navigationBarTitle("Sign In", displayMode: .inline)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView().environmentObject(SessionStore())
    }
}
