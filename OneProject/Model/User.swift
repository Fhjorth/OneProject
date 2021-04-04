//
//  User.swift
//  OneProject
//
//  Created by Frederik Hjorth on 04/04/2021.
//

import Foundation

struct User {
    private var uid: String
    private var email: String
    private var displayName: String
    
    init(uid: String, email: String, displayName: String) {
        self.uid = uid
        self.email = email
        self.displayName = displayName
    }
}
