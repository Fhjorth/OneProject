//
//  ImageSnackMenu.swift
//  OneProject
//
//  Created by Frederik Hjorth on 16/04/2021.
//

import SwiftUI

struct ImageSnackMenu: View {
    var event: Event
    var i: Int
    var body: some View {
        VStack {
            Image(event.snacks[i].image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100)
                .padding(.all, 20)
            Text("\(event.snacks[i].title)")
            Text("\(event.snacks[i].price)")
            
        }
    }
}

//struct ImageSnackMenu_Previews: PreviewProvider {
//    static var previews: some View {
//        ImageSnackMenu()
//    }
//}
