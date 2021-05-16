//
//  SessionStore.swift
//  OneProject
//
//  Created by Frederik Hjorth on 05/04/2021.
//

import Foundation
import Firebase
import Combine

class SessionStore: ObservableObject {
    var didChange = PassthroughSubject<SessionStore, Never>()
    var handle: AuthStateDidChangeListenerHandle?
    @Published var session: User? {didSet {self.didChange.send(self)}}
    var global = ControllerRegistry.global
        
    // function to listen if a user is logged in
    func list() {
        handle = Auth.auth().addStateDidChangeListener({ (auth, user) in
            if let user = user {
                //If we have a user, create new user model
                print("got user: \(user)")
                self.session = User(uid: user.uid, email: user.email!, displayName: user.displayName!)
            } else {
                // if we dont have a user, set session to nil
                self.session = nil
            }
        })
    }
    
    func signIn(email: String, password: String, handler: @escaping AuthDataResultCallback) {
        Auth.auth().signIn(withEmail: email, password: password, completion: handler)
    }
    
    func signUp(email: String, password: String, handler: @escaping AuthDataResultCallback) {
        Auth.auth().createUser(withEmail: email, password: password, completion: handler)
    }
    
    func signOut() -> Bool {
        do {
            try Auth.auth().signOut()
            self.session = nil
            self.global.updateUserId(userId: nil)
            return true
        } catch {
            print(error)
            return false
        }
    }
    
    func unbind () {
        if let handle = handle {
            Auth.auth().removeStateDidChangeListener(handle)
        }
    }
}
