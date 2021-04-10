//
//  SignUpView.swift
//  OneProject
//
//  Created by Frederik Hjorth on 05/04/2021.
//

import SwiftUI
import Firebase

struct SignUpView: View {
    
    @State var email: String = ""
    @State var password: String = ""
    @State var error = ""
    @ObservedObject var global = ControllerRegistry.global
    @EnvironmentObject var session: SessionStore
    @State var isShowing: Bool = false
    
    func signUp() {
        self.global.updateLoadingState(isLoading: true)
        
        session.signUp(email: email, password: password) { (result, error ) in
            if let error = error {
                self.error = error.localizedDescription
                self.global.updateLoadingState(isLoading: false)
                print("here 1")
            } else {
                UserDefaults.standard.set(result?.user.uid, forKey: "userId")
                
                self.email = ""
                self.password = ""
                self.isShowing = true
                print("here 2")
            }
        }
    }
    
    var body: some View {
        VStack {
            Text("Create Account")
                .font(.system(size: 32, weight: .heavy))
            
            Text("Sign up to get started")
                .font(.system(size: 18, weight: .medium))
                .foregroundColor(Color("Inactive"))
            
            VStack(spacing: 18) {
                TextField("Email", text: $email)
                    .padding(12)
                    .background(RoundedRectangle(cornerRadius: 5).strokeBorder(Color(.black)))
                SecureField("Password", text: $password)
                    .padding(12)
                    .background(RoundedRectangle(cornerRadius: 5).strokeBorder(Color(.black)))
            }
            .padding(.vertical, 64)
            
            NavigationLink(
                destination: MainView(),
                isActive: $isShowing) {
                EmptyView()
            }
            
            Button("Sign Up") {
                signUp()
            }
            .buttonStyle(CustomButtton())
        }
        .padding(.horizontal, 32)
        .navigationBarTitle("Sign Up", displayMode: .inline)
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
