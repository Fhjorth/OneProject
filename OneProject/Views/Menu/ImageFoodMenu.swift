//
//  ImageFoodMenu.swift
//  OneProject
//
//  Created by Frederik Hjorth on 16/04/2021.
//

import SwiftUI

struct ImageFoodMenu: View {
    var event: Event
    var i: Int
    var body: some View {
        NavigationLink(
            destination: SizeAndQuantityView(event: event.mad[i])
           ) {
        VStack {
            Image(event.mad[i].image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100)
                .padding(.all, 20)
            Text("\(event.mad[i].title)")
            Text("\(event.mad[i].price)")
        }
    }
    }
}

struct ImageFoodMenu_Previews: PreviewProvider {
    static var previews: some View {
        ImageFoodMenu(event: Event.init(aid: "DAS54EASDE", title: "Brøndby Station", image: "BIF", type: "Stadium", price: 50, mad: [Menu(aid:"KKKSAD", title:"Hotdogs",description:"This is description", price: 15, image:"hotdog" )], drinks: [Menu(aid:"TADESAD", title:"fadøl",description:"This is description", price: 25, image:"fadøl" )], snacks: [Menu(aid:"KKKSAD", title:"Mars",description:"This is description", price: 15, image:"mars" )]), i: 1)
    }
}
