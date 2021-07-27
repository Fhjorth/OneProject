//
//  UserViewModel.swift
//  OneProject
//
//  Created by Frederik Hjorth on 22/07/2021.
//

import Foundation
import FirebaseFirestore
import FirebaseAuth

class UserViewModel: ObservableObject {
    
    @Published var users = [User]()
    
    private var db = Firestore.firestore()
    
    func fetchData() {
        let userId = (Auth.auth().currentUser?.uid)!
        let docRef = db.collection("Users").document(userId)
        
        docRef.getDocument(source: .cache) { (document, error) in
            if let document = document {
                let name = document.get("displayName")
                print("Name:  \(name)")
            }
        }
        
//        db.collection("Users").addSnapshotListener { (querySnapshot, Error) in
//            guard let document = querySnapshot?.documents else {
//                print("No document!")
//                return
//            }
//
//            self.users = document.map {(queryDocumentSnapshot) -> User in
//                let data = queryDocumentSnapshot.data()
//                let name = data["displayName"] as? String ?? ""
//                let email = data["email"] as? String ?? ""
//
//                print("USER: " + name)
//
//                return User(email: email, displayName: name)
//            }
//        }
    }
}
