//
//  ProfilView.swift
//  OneProject
//
//  Created by Frederik Hjorth on 05/05/2021.
//

import SwiftUI

struct ProfilView: View {
    
    @EnvironmentObject var session: SessionStore
    @State var isShowingTestView = false
    
    var body: some View {
        VStack{
            Spacer()
            Text("Hello User profile")
            
            Spacer()
            NavigationLink(destination: PlayFileView(), isActive: $isShowingTestView) {
                Button("Test") {
                    self.isShowingTestView = true
                }
                .buttonStyle(CustomButtton())
                .padding(20)
            }
            
            Button("Sign out") {
                session.signOut()
            }
            .buttonStyle(CustomButtton())
            .padding(20)
        }
    }
}

struct ProfilView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilView()
    }
}
