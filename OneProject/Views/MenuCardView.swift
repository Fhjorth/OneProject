//
//  MenuCardView.swift
//  OneProject
//
//  Created by Mathias Hansen on 08/04/2021.
//

import SwiftUI

struct MenuCardView: View {
    
    @State var selectedTab = Tabs.FirstTab
    @State var event: Event

    var body: some View {
        VStack {
            HStack {
                Spacer()
                VStack {
                    Image(systemName: "airplane")
                    .foregroundColor(selectedTab == .FirstTab ? Color.red : Color.black)
                    Text("Beverage")
                }
                .onTapGesture {
                    self.selectedTab = .FirstTab
                }
                Spacer()
                VStack {
                    Image(systemName: "person.fill")
                        .foregroundColor(selectedTab == .SecondTab ? Color.red : Color.black)
                    Text("Food")
                }
                .onTapGesture {
                    self.selectedTab = .SecondTab
                }
                Spacer()
                VStack {
                    Image(systemName: "cart.fill")
                        .foregroundColor(selectedTab == .ThirdTab ? Color.red : Color.black)
                    Text("Alcohol")
                }
                .onTapGesture {
                    self.selectedTab = .ThirdTab
                }
                Spacer()
            }
            .padding(.bottom)
            .background(Color.secondary.edgesIgnoringSafeArea(.all))
            
            Spacer()
            
            if selectedTab == .FirstTab {
                FirstTabView(event:event)
            } else if selectedTab == .SecondTab {
                SecondTabView(event:event)
            } else {
                ThirdTabView(event:event)
            }
        }
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
         } .navigationBarBackButtonHidden(true)
            Spacer()
        }
    }


//food
struct SecondTabView : View {
    var event: Event
        var body : some View {
            VStack {
                ForEach(0..<event.mad.count) { i in
                    if i % 2 == 0  {
                        HStack {
                            ImageFoodMenu(event: event, i: i)
                            if i+1 < event.mad.count  {
                                ImageFoodMenu(event: event, i:i+1)
                        }
                     }
                   }
                }
             } .navigationBarBackButtonHidden(true)
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
         } .navigationBarBackButtonHidden(true)
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
//        var event: Event
//
//        MenuCardView(event: event)
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


struct ImageFoodMenu: View {
    var event: Event
    var i: Int
    var body: some View {
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

