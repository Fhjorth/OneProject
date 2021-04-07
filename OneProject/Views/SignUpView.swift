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
    @State var error: Bool = false
    @ObservedObject var global = ControllerRegistry.global
    @EnvironmentObject var session: SessionStore
    @State var isShowing: Bool = false
    
    func signUp() {
        self.global.updateLoadingState(isLoading: true)
        error = false
        
        session.signUp(email: email, password: password) { (result, error ) in
            if error != nil {
                self.error = true
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
            
            Button("Sign Up") {
                signUp()
            }
            .buttonStyle(CustomButtton())
        }
        .navigationBarTitle("Sign Up", displayMode: .inline)
    }
}

//struct SignUpView_Previews: PreviewProvider {
//    static var previews: some View {
//        SignUpView()
//    }
//}
