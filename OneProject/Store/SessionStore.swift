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
    var session: User? {didSet {self.didChange.send(self)}}
    
    // function to listen if a user is logged in
    func list() {
        
    }
    
    func signIn(email: String, password: String, handler: @escaping AuthDataResultCallback) {
        Auth.auth().signIn(withEmail: email, password: password, completion: handler)
    }
    
    func signUp(email: String, password: String, handler: @escaping AuthDataResultCallback) {
        Auth.auth().createUser(withEmail: email, password: password, completion: handler)
    }
    
    func unbind () {
        if let handle = handle {
            Auth.auth().removeStateDidChangeListener(handle)
        }
    }
}
