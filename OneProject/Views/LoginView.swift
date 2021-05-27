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
    
    func logIn() {
        self.global.updateLoadingState(isLoading: true)
        error = false
        
        session.signIn(email: email, password: password) { (result, error) in
            self.global.updateLoadingState(isLoading: false)
            if error != nil {
                self.error = true
                print("There was and error: ", error)
            } else {
                self.global.updateUserId(userId: result?.user.uid)
                self.email = ""
                self.password = ""
                self.isShowing.toggle()
                print("isShowing:", isShowing)
                print("Updated user: ", result?.user.uid )
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
                }
                .padding(.vertical, 64)
                
                NavigationLink(
                    destination: navbarView(),
                    isActive: $isShowing
                ) {
                    Button(action: {
                        logIn()
                    }, label: {
                        Text("Login")
                    })
                    .buttonStyle(CustomButtton())
                }
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
