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
     var mad: [Menu]
     var drinks: [Menu]
     var snacks: [Menu]
}

class Events: ObservableObject{
    @Published var stadium: [Event]
    @Published var concert: [Event]
    @Published var cinema: [Event]

    init(){
          

//        Menu(aid:"KKKSAD", title:"Hotdogs",description:"This is description", price: 15, image:"hotdog" ),
//        Menu(aid:"KKKSAD", title:"Kylling",description:"This is description", price: 15, image:"Kylling" ),
//        Menu(aid:"KKKSAD", title:"Burger",description:"This is description", price: 15, image:"burger" ),
//        Menu(aid:"KKKSAD", title:"Pizza",description:"This is description", price: 15, image:"pizza" ),

        self.stadium = [
            Event(aid: "DAS54EASDE", title: "Brøndby Stadium", image: "BIF", type:"Stadium",price: 50.99,
            mad: [
                Menu(aid:"KKKSAD", title:"Hotdogs",description:"This is description", price: 15, image:"hotdog" ),
                Menu(aid:"KKKSAD", title:"Kylling",description:"This is description", price: 15, image:"Kylling" ),
                Menu(aid:"KKKSAD", title:"Burger",description:"This is description", price: 15, image:"burger" ),
                Menu(aid:"KKKSAD", title:"Pizza",description:"This is description", price: 15, image:"pizza" )
            ],
            drinks: [
                Menu(aid:"TADESAD", title:"fadøl",description:"This is description", price: 25, image:"fadøl" ),
                Menu(aid:"ASDSADE", title:"pepsi",description:"This is description1", price: 20, image:"pepsi" ),
                Menu(aid:"KKKK", title:"gin",description:"This is description2", price: 30, image:"gin" ),
                Menu(aid:"KJSAD", title:"rødvin",description:"This is description3", price: 35, image:"rødvin"),
                Menu(aid:"SSSSSS", title:"fadøl",description:"This is description3", price: 35, image:"fadøl"),
                ],
            snacks: [
                Menu(aid:"KKKSAD", title:"Mars",description:"This is description", price: 15, image:"mars" ),
                Menu(aid:"KKKSAD", title:"Gummibears",description:"This is description", price: 15, image:"gummibears" ),
                Menu(aid:"KKKSAD", title:"Popcorn",description:"This is description", price: 15, image:"popcorn" )
            ]),
        
            Event(aid: "SSKK43ASD", title: "PARKEN", image: "Parken", type:"STADIUM",price: 22.99,
            mad: [
                Menu(aid:"KKKSAD", title:"Hotdogs",description:"This is description", price: 15, image:"hotdog" ),
                Menu(aid:"KKKSAD", title:"Kylling",description:"This is description", price: 15, image:"Kylling" ),
                Menu(aid:"KKKSAD", title:"Burger",description:"This is description", price: 15, image:"burger" ),
                Menu(aid:"KKKSAD", title:"Pizza",description:"This is description", price: 15, image:"pizza" )
            ],
            drinks: [
                Menu(aid:"TADESAD", title:"fadøl",description:"This is description", price: 25, image:"fadøl" ),
                Menu(aid:"ASDSADE", title:"pepsi",description:"This is description1", price: 20, image:"pepsi" ),
                Menu(aid:"KKKK", title:"gin",description:"This is description2", price: 30, image:"gin" ),
                Menu(aid:"KJSAD", title:"rødvin",description:"This is description3", price: 35, image:"rødvin"),
                ],
            snacks: [
                Menu(aid:"KKKSAD", title:"Mars",description:"This is description", price: 15, image:"mars" ),
                Menu(aid:"KKKSAD", title:"Gummibears",description:"This is description", price: 15, image:"gummibears" ),
                Menu(aid:"KKKSAD", title:"Popcorn",description:"This is description", price: 15, image:"popcorn" )
            ]),
        
            
            Event( aid: "VAS09DEAS", title: "OB", image: "OB", type:"STADIUM",price: 10.99,
            mad: [
                Menu(aid:"KKKSAD", title:"Hotdogs",description:"This is description", price: 15, image:"hotdog" ),
                Menu(aid:"KKKSAD", title:"Kylling",description:"This is description", price: 15, image:"Kylling" ),
                Menu(aid:"KKKSAD", title:"Burger",description:"This is description", price: 15, image:"burger" ),
                Menu(aid:"KKKSAD", title:"Pizza",description:"This is description", price: 15, image:"pizza" )
            ],
            drinks: [
                Menu(aid:"TADESAD", title:"fadøl",description:"This is description", price: 25, image:"fadøl" ),
                Menu(aid:"ASDSADE", title:"pepsi",description:"This is description1", price: 20, image:"pepsi" ),
                Menu(aid:"KKKK", title:"gin",description:"This is description2", price: 30, image:"gin" ),
                Menu(aid:"KJSAD", title:"rødvin",description:"This is description3", price: 35, image:"rødvin"),
            ],
            snacks: [
                Menu(aid:"KKKSAD", title:"Mars",description:"This is description", price: 15, image:"mars" ),
                Menu(aid:"KKKSAD", title:"Gummibears",description:"This is description", price: 15, image:"gummibears" ),
                Menu(aid:"KKKSAD", title:"Popcorn",description:"This is description", price: 15, image:"popcorn" )
            ]),
        
            Event(aid: "R7EA8SE", title: "FCN", image: "FCN", type:"STADIUM",price: 20.99,
            mad: [
                Menu(aid:"KKKSAD", title:"Hotdogs",description:"This is description", price: 15, image:"hotdog" ),
                Menu(aid:"KKKSAD", title:"Kylling",description:"This is description", price: 15, image:"Kylling" ),
                Menu(aid:"KKKSAD", title:"Burger",description:"This is description", price: 15, image:"burger" ),
                Menu(aid:"KKKSAD", title:"Pizza",description:"This is description", price: 15, image:"pizza" )
            ],
            drinks: [
                Menu(aid:"TADESAD", title:"fadøl",description:"This is description", price: 25, image:"fadøl" ),
                Menu(aid:"ASDSADE", title:"pepsi",description:"This is description1", price: 20, image:"pepsi" ),
                Menu(aid:"KKKK", title:"gin",description:"This is description2", price: 30,image:"gin" ),
                Menu(aid:"KJSAD", title:"rødvin",description:"This is description3", price: 35, image:"rødvin"),
                ],
            snacks: [
                Menu(aid:"KKKSAD", title:"Mars",description:"This is description", price: 15, image:"mars" ),
                Menu(aid:"KKKSAD", title:"Gummibears",description:"This is description", price: 15, image:"gummibears" ),
                Menu(aid:"KKKSAD", title:"Popcorn",description:"This is description", price: 15, image:"popcorn" )
            ]),
        ]
        
        
        self.concert = [
            Event(aid: "2KV6SDE", title: "Royal Arena", image: "RoyalArena", type:"Concert",price: 50.99,
            mad: [
                Menu(aid:"KKKSAD", title:"Hotdogs",description:"This is description", price: 15, image:"hotdog" ),
                Menu(aid:"KKKSAD", title:"Kylling",description:"This is description", price: 15, image:"Kylling" ),
                Menu(aid:"KKKSAD", title:"Burger",description:"This is description", price: 15, image:"burger" ),
                Menu(aid:"KKKSAD", title:"Pizza",description:"This is description", price: 15, image:"pizza" )
            ],
            drinks: [
                Menu(aid:"TADESAD", title:"fadøl",description:"This is description", price: 25, image:"fadøl" ),
                Menu(aid:"ASDSADE", title:"pepsi",description:"This is description1", price: 20, image:"pepsi" ),
                Menu(aid:"KKKK", title:"gin",description:"This is description2", price: 30, image:"gin" ),
                Menu(aid:"KJSAD", title:"rødvin",description:"This is description3", price: 35, image:"rødvin"),
                Menu(aid:"SSSSSS", title:"fadøl",description:"This is description3", price: 35, image:"fadøl"),
            ],
            snacks: [
                Menu(aid:"KKKSAD", title:"Mars",description:"This is description", price: 15, image:"mars" ),
                Menu(aid:"KKKSAD", title:"Gummibears",description:"This is description", price: 15, image:"gummibears" ),
                Menu(aid:"KKKSAD", title:"Popcorn",description:"This is description", price: 15, image:"popcorn" )
            ]),
            
            Event(aid: "SASDIEUA", title: "VEGA", image: "VEGA", type:"Concert",price: 22.99,
            mad: [
                Menu(aid:"KKKSAD", title:"Hotdogs",description:"This is description", price: 15, image:"hotdog" ),
                Menu(aid:"KKKSAD", title:"Kylling",description:"This is description", price: 15, image:"Kylling" ),
                Menu(aid:"KKKSAD", title:"Burger",description:"This is description", price: 15, image:"burger" ),
                Menu(aid:"KKKSAD", title:"Pizza",description:"This is description", price: 15, image:"pizza" )
            ],
            drinks: [
                Menu(aid:"TADESAD", title:"fadøl",description:"This is description", price: 25, image:"fadøl" ),
                Menu(aid:"ASDSADE", title:"pepsi",description:"This is description1", price: 20, image:"pepsi" ),
                Menu(aid:"KKKK", title:"gin",description:"This is description2", price: 30, image:"gin" ),
                Menu(aid:"KJSAD", title:"rødvin",description:"This is description3", price: 35, image:"rødvin"),
                Menu(aid:"SSSSSS", title:"fadøl",description:"This is description3", price: 35, image:"fadøl"),
                ],
            snacks: [
                Menu(aid:"KKKSAD", title:"Mars",description:"This is description", price: 15, image:"mars" ),
                Menu(aid:"KKKSAD", title:"Gummibears",description:"This is description", price: 15, image:"gummibears" ),
                Menu(aid:"KKKSAD", title:"Popcorn",description:"This is description", price: 15, image:"popcorn" )
            ]),
            
            Event( aid: "123NADE3", title: "DR Koncert Hus", image: "DRKoncertHus", type:"Concert",price: 10.99,
            mad: [
                Menu(aid:"KKKSAD", title:"Hotdogs",description:"This is description", price: 15, image:"hotdog" ),
                Menu(aid:"KKKSAD", title:"Kylling",description:"This is description", price: 15, image:"Kylling" ),
                Menu(aid:"KKKSAD", title:"Burger",description:"This is description", price: 15, image:"burger" ),
                Menu(aid:"KKKSAD", title:"Pizza",description:"This is description", price: 15, image:"pizza" )
            ],
            drinks: [
                Menu(aid:"TADESAD", title:"fadøl",description:"This is description", price: 25, image:"fadøl" ),
                Menu(aid:"ASDSADE", title:"pepsi",description:"This is description1", price: 20, image:"pepsi" ),
                Menu(aid:"KKKK", title:"gin",description:"This is description2", price: 30, image:"gin" ),
                Menu(aid:"KJSAD", title:"rødvin",description:"This is description3", price: 35, image:"rødvin"),
                Menu(aid:"SSSSSS", title:"fadøl",description:"This is description3", price: 35, image:"fadøl"),
                ],
            snacks: [
                Menu(aid:"KKKSAD", title:"Mars",description:"This is description", price: 15, image:"mars" ),
                Menu(aid:"KKKSAD", title:"Gummibears",description:"This is description", price: 15, image:"gummibears" ),
                Menu(aid:"KKKSAD", title:"Popcorn",description:"This is description", price: 15, image:"popcorn" )
            ]),
            
            Event(aid: "74SDAE", title: "Opera huset", image: "Operahus", type:"Concert",price: 20.99,
            mad: [
                Menu(aid:"KKKSAD", title:"Hotdogs",description:"This is description", price: 15, image:"hotdog" ),
                Menu(aid:"KKKSAD", title:"Kylling",description:"This is description", price: 15, image:"Kylling" ),
                Menu(aid:"KKKSAD", title:"Burger",description:"This is description", price: 15, image:"burger" ),
                Menu(aid:"KKKSAD", title:"Pizza",description:"This is description", price: 15, image:"pizza" )],
            drinks: [
                Menu(aid:"TADESAD", title:"fadøl",description:"This is description", price: 25, image:"fadøl" ),
                Menu(aid:"ASDSADE", title:"pepsi",description:"This is description1", price: 20, image:"pepsi" ),
                Menu(aid:"KKKK", title:"gin",description:"This is description2", price: 30, image:"gin" ),
                Menu(aid:"KJSAD", title:"rødvin",description:"This is description3", price: 35, image:"rødvin"),
                Menu(aid:"SSSSSS", title:"fadøl",description:"This is description3", price: 35, image:"fadøl"),
                ],
            snacks: [
                Menu(aid:"KKKSAD", title:"Mars",description:"This is description", price: 15, image:"mars" ),
                Menu(aid:"KKKSAD", title:"Gummibears",description:"This is description", price: 15, image:"gummibears" ),
                Menu(aid:"KKKSAD", title:"Popcorn",description:"This is description", price: 15, image:"popcorn" )
            ])
        ]
        
        
        self.cinema = [
        Event(aid: "2KV6SDE", title: "Grand Teatret", image: "GrandTeatret", type:"Cinema",price: 50.99,
        mad: [
            Menu(aid:"KKKSAD", title:"Hotdogs",description:"This is description", price: 15, image:"hotdog" ),
            Menu(aid:"KKKSAD", title:"Kylling",description:"This is description", price: 15, image:"Kylling" ),
            Menu(aid:"KKKSAD", title:"Burger",description:"This is description", price: 15, image:"burger" ),
            Menu(aid:"KKKSAD", title:"Pizza",description:"This is description", price: 15, image:"pizza" )
        ],
        drinks: [
            Menu(aid:"TADESAD", title:"fadøl",description:"This is description", price: 25, image:"fadøl" ),
            Menu(aid:"ASDSADE", title:"pepsi",description:"This is description1", price: 20, image:"pepsi" ),
            Menu(aid:"KKKK", title:"gin",description:"This is description2", price: 30, image:"gin" ),
            Menu(aid:"KJSAD", title:"rødvin",description:"This is description3", price: 35, image:"rødvin"),
            Menu(aid:"SSSSSS", title:"fadøl",description:"This is description3", price: 35, image:"fadøl"),
            ],
        snacks: [
            Menu(aid:"KKKSAD", title:"Mars",description:"This is description", price: 15, image:"mars" ),
            Menu(aid:"KKKSAD", title:"Gummibears",description:"This is description", price: 15, image:"gummibears" ),
            Menu(aid:"KKKSAD", title:"Popcorn",description:"This is description", price: 15, image:"popcorn" )
        ]),
            
        Event(aid: "SASDIEUA", title: "Cinemaxx", image: "cinemaxx", type:"Cinema",price: 22.99,
        mad: [
            Menu(aid:"KKKSAD", title:"Hotdogs",description:"This is description", price: 15, image:"hotdog" ),
            Menu(aid:"KKKSAD", title:"Kylling",description:"This is description", price: 15, image:"Kylling" ),
            Menu(aid:"KKKSAD", title:"Burger",description:"This is description", price: 15, image:"burger" ),
            Menu(aid:"KKKSAD", title:"Pizza",description:"This is description", price: 15, image:"pizza" )
        ],
        drinks: [
            Menu(aid:"TADESAD", title:"fadøl",description:"This is description", price: 25, image:"fadøl" ),
            Menu(aid:"ASDSADE", title:"pepsi",description:"This is description1", price: 20, image:"pepsi" ),
            Menu(aid:"KKKK", title:"gin",description:"This is description2", price: 30, image:"gin" ),
            Menu(aid:"KJSAD", title:"rødvin",description:"This is description3", price: 35, image:"rødvin"),
            Menu(aid:"SSSSSS", title:"fadøl",description:"This is description3", price: 35, image:"fadøl"),
            ],
        snacks: [
            Menu(aid:"KKKSAD", title:"Mars",description:"This is description", price: 15, image:"mars" ),
            Menu(aid:"KKKSAD", title:"Gummibears",description:"This is description", price: 15, image:"gummibears" ),
            Menu(aid:"KKKSAD", title:"Popcorn",description:"This is description", price: 15, image:"popcorn" )
        ]),
            
        Event( aid: "123NADE3", title: "Palads", image: "Palads", type:"Cinema",price: 10.99,
        mad: [
            Menu(aid:"KKKSAD", title:"Hotdogs",description:"This is description", price: 15, image:"hotdog" ),
            Menu(aid:"KKKSAD", title:"Kylling",description:"This is description", price: 15, image:"Kylling" ),
            Menu(aid:"KKKSAD", title:"Burger",description:"This is description", price: 15, image:"burger" ),
            Menu(aid:"KKKSAD", title:"Pizza",description:"This is description", price: 15, image:"pizza" )
        ],
        drinks: [
            Menu(aid:"TADESAD", title:"fadøl",description:"This is description", price: 25, image:"fadøl" ),
            Menu(aid:"ASDSADE", title:"pepsi",description:"This is description1", price: 20, image:"pepsi" ),
            Menu(aid:"KKKK", title:"gin",description:"This is description2", price: 30,image:"gin" ),
            Menu(aid:"KJSAD", title:"rødvin",description:"This is description3", price: 35, image:"rødvin"),
            Menu(aid:"SSSSSS", title:"fadøl",description:"This is description3", price: 35, image:"fadøl"),
            ],
        snacks: [
            Menu(aid:"KKKSAD", title:"Mars",description:"This is description", price: 15, image:"mars" ),
            Menu(aid:"KKKSAD", title:"Gummibears",description:"This is description", price: 15, image:"gummibears" ),
            Menu(aid:"KKKSAD", title:"Popcorn",description:"This is description", price: 15, image:"popcorn" )
        ]),
            
        Event(aid: "74SDAE", title: "Imperial", image: "Imperial", type:"Cinema",price: 20.99,
        mad: [
            Menu(aid:"KKKSAD", title:"Hotdogs",description:"This is description", price: 15, image:"hotdog" ),
            Menu(aid:"KKKSAD", title:"Kylling",description:"This is description", price: 15, image:"Kylling" ),
            Menu(aid:"KKKSAD", title:"Burger",description:"This is description", price: 15, image:"burger" ),
            Menu(aid:"KKKSAD", title:"Pizza",description:"This is description", price: 15, image:"pizza" )
        ],
        drinks: [
            Menu(aid:"TADESAD", title:"fadøl",description:"This is description", price: 25, image:"fadøl" ),
            Menu(aid:"ASDSADE", title:"pepsi",description:"This is description1", price: 20, image:"pepsi" ),
            Menu(aid:"KKKK", title:"gin",description:"This is description2", price: 30, image:"gin" ),
            Menu(aid:"KJSAD", title:"rødvin",description:"This is description3", price: 35, image:"rødvin"),
            Menu(aid:"SSSSSS", title:"fadøl",description:"This is description3", price: 35, image:"fadøl"),
            ],
        snacks: [
            Menu(aid:"KKKSAD", title:"Mars",description:"This is description", price: 15, image:"mars" ),
            Menu(aid:"KKKSAD", title:"Gummibears",description:"This is description", price: 15, image:"gummibears" ),
            Menu(aid:"KKKSAD", title:"Popcorn",description:"This is description", price: 15, image:"popcorn" )
        ]),
    ]
    }

}
