//
//  User.swift
//  OneProject
//
//  Created by Frederik Hjorth on 04/04/2021.
//

import Foundation

struct User: Identifiable {
    
    var id: String = UUID().uuidString
    var email: String
    var displayName: String
    
//    init(id: String, email: String, displayName: String) {
//        self.id = id
//        self.email = email
//        self.displayName = displayName
//    }
}
