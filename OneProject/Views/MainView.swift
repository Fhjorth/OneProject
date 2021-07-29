//
//  MainView.swift
//  OneProject
//
//  Created by Frederik Hjorth on 05/04/2021.
//

import SwiftUI


struct MainView: View {
    @StateObject var model = Events()

   
   
    var body: some View {
        VStack{
            ScrollView(.vertical) {
                VStack(alignment: .leading) {
                    Group {
                        Text("Stadium")
                            .fontWeight(.bold)
                            .font(.title)
                            .foregroundColor(.newPrimary)
                            .padding(.leading, 20)
                        ScrollView(.horizontal){
                            HStack(spacing:10){
                                ForEach(model.stadium){
                                    event in
                                    NavigationLink(
                                        destination: MenuCardView(event: event)) {
                                        ProductCard(image: event.image,
                                                    title: event.title, type: event.type, price: event.price)
                                    }
//                                ForEach(0..<model.stadium.count){
//                                    index in
//                                    NavigationLink(
//                                        destination: MenuCardView(event: model.stadium[index])
//                                    ) {
//                                        ProductCard(image: model.stadium[index].image,
//                                                    title: model.stadium[index].title, type: model.stadium[index].type, price: model.stadium[index].price)
//                                    }
                                }
                            }.padding(.leading)
                        }
                    }
                }
                
                VStack(alignment: .leading) {
                    Group {
                        Text("Concert")
                            .fontWeight(.bold)
                            .font(.title)
                            .foregroundColor(.newPrimary)
                            .padding(.leading, 20)
                        ScrollView(.horizontal){
                            HStack(spacing:10){
                                ForEach(model.concert){
                                    event in
                                    NavigationLink( destination: MenuCardView(event: event)) {
                                        ProductCard(image:event.image,
                                                    title:event.title, type:event.type, price:event.price)
                                    }
                                }
                            }.padding(.leading)
                        }
                    }
                }
                VStack(alignment: .leading) {
                    Group {
                        Text("Cinema")
                            .fontWeight(.bold)
                            .font(.title)
                            .foregroundColor(.newPrimary)
                            .padding(.leading, 20)
                        ScrollView(.horizontal){
                            HStack(){
                                ForEach(model.cinema){
                                    event in
                                        NavigationLink( destination: MenuCardView(event: event)) {
                                        ProductCard(image:event.image,
                                                    title:event.title, type:event.type, price:event.price)
                                    }
                                }
                            }
                            .padding(.leading)
                        }
                    }
                }
                Spacer()
            }
            
        }
        .navigationBarHidden(true)
        .navigationBarTitle("Choose Event", displayMode: .large)
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
        ZStack(alignment: .bottomTrailing) {
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .opacity(0.7)
                .frame(width: 150, height: 150)
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
                .padding(12)
        }
        .background(Color(red: 32/255, green: 36/255, blue: 38/255))
        .clipShape(RoundedRectangle(cornerRadius: 14, style: .continuous))
        .frame(maxWidth: .infinity, alignment: .center)
        .padding(.all, 3)
    }
}
