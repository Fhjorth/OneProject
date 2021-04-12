//
//  MainView.swift
//  OneProject
//
//  Created by Frederik Hjorth on 05/04/2021.
//

import SwiftUI

struct MainView: View {
    @StateObject var stadium = Events()
    @StateObject var model = Events()
    var message = "Hello from ContentView"
    
    
    var body: some View {
        VStack{
            Group {
                Divider()
                Text("Stadium").fontWeight(.bold).font(.title)
                ScrollView(.horizontal){
                    HStack(spacing:10){
                        ForEach(model.stadium){
                            event in
                            NavigationLink(
                                destination: MenuCardView(event: event)
                            ) {
                                ProductCard(image: event.image,
                                            title: event.title, type: event.type, price: event.price)
                            }
                        }
                    }.padding()
                }.frame(height:100)
                Divider()
                Spacer()
            }
            
            Group {
                Divider()
                Text("Concert").fontWeight(.bold).font(.title)
                ScrollView(.horizontal){
                    HStack(spacing:10){
                        ForEach(model.concert){
                            event in
                            NavigationLink(
                                destination: MenuCardView(event: event)
                            ) {
                                ProductCard(image:event.image,
                                            title:event.title, type:event.type, price:event.price)
                            }
                        }
                    }.padding()
                }.frame(height:100)
                Divider()
                Spacer()
            }
            Group {
                Divider()
                Text("Cinema").fontWeight(.bold).font(.title)
                ScrollView(.horizontal){
                    HStack(spacing:10){
                        ForEach(model.cinema){
                            event in
                            NavigationLink(
                                destination: MenuCardView(event: event)
                            ) {
                                ProductCard(image:event.image,
                                            title:event.title, type:event.type, price:event.price)
                            }
                        }
                    }.padding()
                }.frame(height:100)
                Divider()
            }
        }        .navigationBarBackButtonHidden(true)
        .padding(.horizontal, 32)
        .navigationBarTitle("Choose Event", displayMode: .inline)
       }
    

}


struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()

    }
}




struct ProductCard: View {
    
    var image: String
    var title: String
    var type: String
    var price: Double
    
    var body: some View {
        HStack(alignment: .center) {
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100)
                .padding(.all, 20)
            
            VStack(alignment: .leading) {
                Text(title)
                    .font(.system(size: 26, weight: .bold, design: .default))
                    .foregroundColor(.white)
                Text(type)
                    .font(.system(size: 16, weight: .bold, design: .default))
                    .foregroundColor(.gray)
                HStack {
                    Text("$" + String.init(format: "%0.2f", price))
                        .font(.system(size: 16, weight: .bold, design: .default))
                        .foregroundColor(.white)
                        .padding(.top, 8)
                }
            }.padding(.trailing, 20)
            Spacer()
        }
        .frame(maxWidth: .infinity, alignment: .center)
        .background(Color(red: 32/255, green: 36/255, blue: 38/255))
        .modifier(CardModifier())
        .padding(.all, 10)
        
    }
}

struct CardModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .cornerRadius(20)
            .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 0)
    }
    
}
