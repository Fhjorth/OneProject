//
//  PlayFileView.swift
//  OneProject
//
//  Created by Frederik Hjorth on 08/11/2021.
//

import SwiftUI
import Firebase

struct PlayFileView: View {
    
    let db = Firestore.firestore()
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        
        Button("Save to firebase") {
            db.collection("cities").document("LA").setData([
                "name": "Los Angeles",
                "state": "CA",
                "country": "USA"
            ]) { err in
                if let err = err {
                    print("Error writing document: \(err)")
                } else {
                    print("Document successfully written!")
                }
            }
        }
        .buttonStyle(CustomButtton())
        
        Button("get to firebase") {
            let docRef = db.collection("cities").document("LA")
            let docFood = db.collection("Food").document()
            
            docFood.setData([
                "Name" : "Pizza",
                "Price" : 60
            ]) {
                err in
                if let err = err {
                    print("FEJL")
                } else {
                    print("PERFEKT")
                }
            }

            docRef.getDocument { (document, error) in
                if let document = document, document.exists {
                    let dataDescription = document.data().map(String.init(describing:)) ?? "nil"
                    print("Document data: \(dataDescription)")
                } else {
                    print("Document does not exist")
                }
            }
        }
        .buttonStyle(CustomButtton())
    }
}

struct PlayFileView_Previews: PreviewProvider {
    static var previews: some View {
        PlayFileView()
    }
}
