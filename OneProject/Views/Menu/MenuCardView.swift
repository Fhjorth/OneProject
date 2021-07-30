//
//  MenuCardView.swift
//  OneProject
//
//  Created by Mathias Hansen on 08/04/2021.
//

import SwiftUI

struct MenuCardView: View {
    
    @State var selectedTab = Tabs.FirstTab
     var event: Event


    var body: some View {
            VStack {
                HStack {
                    Spacer()
                    VStack {
                        Image(systemName: "airplane")
                            .foregroundColor(selectedTab == .FirstTab ? Color.newPrimary : Color.gray)
                        Text("Beverage")
                    }
                    .onTapGesture {
                        self.selectedTab = .FirstTab
                    }
                    Spacer()
                    VStack {
                        Image(systemName: "person.fill")
                            .foregroundColor(selectedTab == .SecondTab ? .newPrimary : Color.gray)
                        Text("Food")
                    }
                    .onTapGesture {
                        self.selectedTab = .SecondTab
                    }
                    Spacer()
                    VStack {
                        Image(systemName: "cart.fill")
                            .foregroundColor(selectedTab == .ThirdTab ? Color.newPrimary
                                                : Color.gray)
                        Text("Alcohol")
                    }
                    .onTapGesture {
                        self.selectedTab = .ThirdTab
                    }
                    Spacer()
                }
                .padding(.bottom)
                .padding(.top, 20)
                .background(Color.white.edgesIgnoringSafeArea(.all))
                Divider()
                
                
                if selectedTab == .FirstTab {
                    FirstTabView(event:event)
                } else if selectedTab == .SecondTab {
                    SecondTabView(event:event)
                } else {
                    ThirdTabView(event:event)
                }
            }
            .navigationBarTitle("Choose Menu", displayMode: .inline)
        }
}

//Beverage
struct FirstTabView : View {
    var event: Event
    var body : some View {
        VStack {
            ForEach(0..<event.drinks.count) { i in
                if i % 2 == 0  {
                    //HStack() {
                    HStack(spacing: 0) {
                        ImageDrinksMenu(event: event, i: i)
                        
                        if i+1 < event.drinks.count  {
                        ImageDrinksMenu(event: event, i:i+1)
                        }
                    }
                }
            }
        }
        //Spacer()
        .padding(.top, 20)
    }
}


//food
struct SecondTabView : View {
    var event: Event
        var body : some View {
            VStack {
                ForEach(0..<event.food.count) { i in
                    if i % 2 == 0  {
                        HStack {
                            ImageFoodMenu(event: event, i: i)
                            if i+1 < event.food.count  {
                                ImageFoodMenu(event: event, i:i+1)
                        }
                     }
                   }
                }
             }
                Spacer()
    }
}

//Alcohol
struct ThirdTabView : View {
    var event: Event
    var body : some View {
        VStack {
            ForEach(0..<event.snacks.count) { i in
                if i % 2 == 0  {
                    HStack {
                        ImageSnackMenu(event: event, i: i )
                        if i+1 < event.snacks.count  {
                        ImageSnackMenu(event: event, i:i+1)
                    }
                 }
               }
            }
         }
            Spacer()
        }
}

enum Tabs {
    case FirstTab
    case SecondTab
    case ThirdTab
}



//struct MenuCardView_Previews: PreviewProvider {
//    static var previews: some View {
//        MenuCardView(event: )
//    }
//}



struct ImageDrinksMenu: View {
    var event: Event
    var i: Int
    var body: some View {
        NavigationLink(
            destination: SizeAndQuantityView(event: event)
           ) {
        VStack {
            Image(event.drinks[i].image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100)
                .padding(.all, 20)
            Text("\(event.drinks[i].title)")
            Text("\(event.drinks[i].price)")
        }
        }
    }
}


//struct ImageFoodMenu: View {
//    var event: Event
//    var i: Int
//    var body: some View {
//        VStack {
//            Image(event.mad[i].image)
//                .resizable()
//                .aspectRatio(contentMode: .fit)
//                .frame(width: 100)
//                .padding(.all, 20)
//            Text("\(event.mad[i].title)")
//            Text("\(event.mad[i].price)")
//        }
//    }
//}
