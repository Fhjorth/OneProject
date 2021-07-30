//
//  SizeAndQuantityView.swift
//  OneProject
//
//  Created by Mathias Hansen on 11/04/2021.
//

import SwiftUI

struct SizeAndQuantityView: View {
    var event: Event
    @State private var selected = 1
    @State private var value = 0

    
    func incrementStep() {
           value += 1
       }

       func decrementStep() {
           value -= 1
       }

    var body: some View {
        VStack {
            Image(event.drinks[0].image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300)
                .padding(.all, 20)
            Text("\(event.drinks[0].title)").bold()
            Text("\(event.drinks[0].price)").bold()
            
            Text("Size")
            Picker(selection: $selected, label: Text("Favorite Color")) {
                           Text("Large").tag(1)
                           Text("Medium").tag(2)
                           Text("Small").tag(3)
                       }
            HStack{
                Stepper(onIncrement: incrementStep,
                            onDecrement: decrementStep) {
                            Text("Value: \(value)")
                        }
            }
            
            Button("Save order") {
                print(value )
                print(event.title )
                print(selected )

            }
            .buttonStyle(CustomButtton())
            Spacer()
        }
        .navigationBarTitle("Order", displayMode: .inline)

    }
}

struct SizeAndQuantityView_Previews: PreviewProvider {
    static var previews: some View {

        SizeAndQuantityView(event: Event(aid: "DAS54EASDE", title: "Brøndby Stadium", image: "BIF", type:"Stadium",price: 50.99,
                                  food: [
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
                                  ]))
    }
}



//elf.stadium = [
//    Event(aid: "DAS54EASDE", title: "Brøndby Stadium", image: "BIF", type:"Stadium",price: 50.99,
//    mad: [
//        Menu(aid:"KKKSAD", title:"Hotdogs",description:"This is description", price: 15, image:"hotdog" ),
//        Menu(aid:"KKKSAD", title:"Kylling",description:"This is description", price: 15, image:"Kylling" ),
//        Menu(aid:"KKKSAD", title:"Burger",description:"This is description", price: 15, image:"burger" ),
//        Menu(aid:"KKKSAD", title:"Pizza",description:"This is description", price: 15, image:"pizza" )
//    ],
//    drinks: [
//        Menu(aid:"TADESAD", title:"fadøl",description:"This is description", price: 25, image:"fadøl" ),
//        Menu(aid:"ASDSADE", title:"pepsi",description:"This is description1", price: 20, image:"pepsi" ),
//        Menu(aid:"KKKK", title:"gin",description:"This is description2", price: 30, image:"gin" ),
//        Menu(aid:"KJSAD", title:"rødvin",description:"This is description3", price: 35, image:"rødvin"),
//        Menu(aid:"SSSSSS", title:"fadøl",description:"This is description3", price: 35, image:"fadøl"),
//        ],
//    snacks: [
//        Menu(aid:"KKKSAD", title:"Mars",description:"This is description", price: 15, image:"mars" ),
//        Menu(aid:"KKKSAD", title:"Gummibears",description:"This is description", price: 15, image:"gummibears" ),
//        Menu(aid:"KKKSAD", title:"Popcorn",description:"This is description", price: 15, image:"popcorn" )
//    ]),


