//
//  CultureEvent.swift
//  OneProject
//
//  Created by Mathias Hansen on 07/04/2021.
//

import Foundation
import SwiftUI
import Combine

struct Event: Identifiable {
     var id = UUID()
     var aid: String
     var title: String
     var image: String
     var type: String
     var price: Double
     var mad: [String]
     var drinks: [Menu]

}



class Events: ObservableObject{
    @Published var stadium: [Event]
    @Published var concert: [Event]
    @Published var cinema: [Event]

    init(){
        

        
        self.stadium = [
            Event(aid: "DAS54EASDE", title: "Brøndby Stadium", image: "BIF", type:"Stadium",price: 50.99, mad: ["HOTDOGS", "FRANSKE"], drinks: [
                Menu(aid:"TADESAD", title:"fadøl",description:"This is description", price: 25, image:"fadøl" ),
                Menu(aid:"ASDSADE", title:"pepsi",description:"This is description1", price: 20, image:"pepsi" ),
                Menu(aid:"KKKK", title:"gin",description:"This is description2", price: 30,
                     image:"gin" ),
                Menu(aid:"KJSAD", title:"rødvin",description:"This is description3", price: 35, image:"rødvin"),
                Menu(aid:"SSSSSS", title:"fadøl",description:"This is description3", price: 35, image:"fadøl"),
                ]),
            Event(aid: "SSKK43ASD", title: "PARKEN", image: "Parken", type:"STADIUM",price: 22.99, mad: ["HOTDOGS", "FRANSKE"], drinks: [
                Menu(aid:"TADESAD", title:"fadøl",description:"This is description", price: 25, image:"fadøl" ),
                Menu(aid:"ASDSADE", title:"pepsi",description:"This is description1", price: 20, image:"pepsi" ),
                Menu(aid:"KKKK", title:"gin",description:"This is description2", price: 30,
                     image:"gin" ),
                Menu(aid:"KJSAD", title:"rødvin",description:"This is description3", price: 35, image:"rødvin"),
                ]),
            Event( aid: "VAS09DEAS", title: "OB", image: "OB", type:"STADIUM",price: 10.99, mad: ["HOTDOGS", "FRANSKE"], drinks: [
                Menu(aid:"TADESAD", title:"fadøl",description:"This is description", price: 25, image:"fadøl" ),
                Menu(aid:"ASDSADE", title:"pepsi",description:"This is description1", price: 20, image:"pepsi" ),
                Menu(aid:"KKKK", title:"gin",description:"This is description2", price: 30,
                     image:"gin" ),
                Menu(aid:"KJSAD", title:"rødvin",description:"This is description3", price: 35, image:"rødvin"),
                ]),
            Event(aid: "R7EA8SE", title: "FCN", image: "FCN", type:"STADIUM",price: 20.99, mad: ["HOTDOGS", "FRANSKE"], drinks: [
                Menu(aid:"TADESAD", title:"fadøl",description:"This is description", price: 25, image:"fadøl" ),
                Menu(aid:"ASDSADE", title:"pepsi",description:"This is description1", price: 20, image:"pepsi" ),
                Menu(aid:"KKKK", title:"gin",description:"This is description2", price: 30,
                     image:"gin" ),
                Menu(aid:"KJSAD", title:"rødvin",description:"This is description3", price: 35, image:"rødvin"),
                ]),
                   ]
        
        
        self.concert = [
            Event(aid: "2KV6SDE", title: "Royal Arena", image: "RoyalArena", type:"Concert",price: 50.99, mad: ["HOTDOGS", "FRANSKE"], drinks: [
                Menu(aid:"TADESAD", title:"fadøl",description:"This is description", price: 25, image:"fadøl" ),
                Menu(aid:"ASDSADE", title:"pepsi",description:"This is description1", price: 20, image:"pepsi" ),
                Menu(aid:"KKKK", title:"gin",description:"This is description2", price: 30,
                     image:"gin" ),
                Menu(aid:"KJSAD", title:"rødvin",description:"This is description3", price: 35, image:"rødvin"),
                Menu(aid:"SSSSSS", title:"fadøl",description:"This is description3", price: 35, image:"fadøl"),
                ]),
            Event(aid: "SASDIEUA", title: "VEGA", image: "VEGA", type:"Concert",price: 22.99, mad: ["HOTDOGS", "FRANSKE"], drinks: [
                Menu(aid:"TADESAD", title:"fadøl",description:"This is description", price: 25, image:"fadøl" ),
                Menu(aid:"ASDSADE", title:"pepsi",description:"This is description1", price: 20, image:"pepsi" ),
                Menu(aid:"KKKK", title:"gin",description:"This is description2", price: 30,
                     image:"gin" ),
                Menu(aid:"KJSAD", title:"rødvin",description:"This is description3", price: 35, image:"rødvin"),
                Menu(aid:"SSSSSS", title:"fadøl",description:"This is description3", price: 35, image:"fadøl"),
                ]),
            Event( aid: "123NADE3", title: "DR Koncert Hus", image: "DRKoncertHus", type:"Concert",price: 10.99, mad: ["HOTDOGS", "FRANSKE"], drinks: [
                Menu(aid:"TADESAD", title:"fadøl",description:"This is description", price: 25, image:"fadøl" ),
                Menu(aid:"ASDSADE", title:"pepsi",description:"This is description1", price: 20, image:"pepsi" ),
                Menu(aid:"KKKK", title:"gin",description:"This is description2", price: 30,
                     image:"gin" ),
                Menu(aid:"KJSAD", title:"rødvin",description:"This is description3", price: 35, image:"rødvin"),
                Menu(aid:"SSSSSS", title:"fadøl",description:"This is description3", price: 35, image:"fadøl"),
                ]),
            Event(aid: "74SDAE", title: "Opera huset", image: "Operahus", type:"Concert",price: 20.99, mad: ["HOTDOGS", "FRANSKE"], drinks: [
                Menu(aid:"TADESAD", title:"fadøl",description:"This is description", price: 25, image:"fadøl" ),
                Menu(aid:"ASDSADE", title:"pepsi",description:"This is description1", price: 20, image:"pepsi" ),
                Menu(aid:"KKKK", title:"gin",description:"This is description2", price: 30,
                     image:"gin" ),
                Menu(aid:"KJSAD", title:"rødvin",description:"This is description3", price: 35, image:"rødvin"),
                Menu(aid:"SSSSSS", title:"fadøl",description:"This is description3", price: 35, image:"fadøl"),
                ])
                   ]
        self.cinema = [
        Event(aid: "2KV6SDE", title: "Grand Teatret", image: "GrandTeatret", type:"Cinema",price: 50.99, mad: ["HOTDOGS", "FRANSKE"], drinks: [
            Menu(aid:"TADESAD", title:"fadøl",description:"This is description", price: 25, image:"fadøl" ),
            Menu(aid:"ASDSADE", title:"pepsi",description:"This is description1", price: 20, image:"pepsi" ),
            Menu(aid:"KKKK", title:"gin",description:"This is description2", price: 30,
                 image:"gin" ),
            Menu(aid:"KJSAD", title:"rødvin",description:"This is description3", price: 35, image:"rødvin"),
            Menu(aid:"SSSSSS", title:"fadøl",description:"This is description3", price: 35, image:"fadøl"),
            ]),
        Event(aid: "SASDIEUA", title: "Cinemaxx", image: "cinemaxx", type:"Cinema",price: 22.99, mad: ["HOTDOGS", "FRANSKE"], drinks: [
            Menu(aid:"TADESAD", title:"fadøl",description:"This is description", price: 25, image:"fadøl" ),
            Menu(aid:"ASDSADE", title:"pepsi",description:"This is description1", price: 20, image:"pepsi" ),
            Menu(aid:"KKKK", title:"gin",description:"This is description2", price: 30,
                 image:"gin" ),
            Menu(aid:"KJSAD", title:"rødvin",description:"This is description3", price: 35, image:"rødvin"),
            Menu(aid:"SSSSSS", title:"fadøl",description:"This is description3", price: 35, image:"fadøl"),
            ]),
        Event( aid: "123NADE3", title: "Palads", image: "Palads", type:"Cinema",price: 10.99, mad: ["HOTDOGS", "FRANSKE"], drinks: [
            Menu(aid:"TADESAD", title:"fadøl",description:"This is description", price: 25, image:"fadøl" ),
            Menu(aid:"ASDSADE", title:"pepsi",description:"This is description1", price: 20, image:"pepsi" ),
            Menu(aid:"KKKK", title:"gin",description:"This is description2", price: 30,
                 image:"gin" ),
            Menu(aid:"KJSAD", title:"rødvin",description:"This is description3", price: 35, image:"rødvin"),
            Menu(aid:"SSSSSS", title:"fadøl",description:"This is description3", price: 35, image:"fadøl"),
            ]),
        Event(aid: "74SDAE", title: "Imperial", image: "Imperial", type:"Cinema",price: 20.99, mad: ["HOTDOGS", "FRANSKE"], drinks: [
            Menu(aid:"TADESAD", title:"fadøl",description:"This is description", price: 25, image:"fadøl" ),
            Menu(aid:"ASDSADE", title:"pepsi",description:"This is description1", price: 20, image:"pepsi" ),
            Menu(aid:"KKKK", title:"gin",description:"This is description2", price: 30,
                 image:"gin" ),
            Menu(aid:"KJSAD", title:"rødvin",description:"This is description3", price: 35, image:"rødvin"),
            Menu(aid:"SSSSSS", title:"fadøl",description:"This is description3", price: 35, image:"fadøl"),
            ])
         ]
    }

}
