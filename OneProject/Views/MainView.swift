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
    
    var body: some View {
        VStack{
            ScrollView(.vertical) {
                VStack(alignment: .leading) {
                    Group {
                        Text("Stadium")
                            .fontWeight(.bold)
                            .font(.title)
                            .foregroundColor(.newSecondary)
                            .padding(.leading, 20)
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
                            }.padding(.leading)
                        }
                    }
                }
                
                VStack(alignment: .leading) {
                    Group {
                        Text("Concert")
                            .fontWeight(.bold)
                            .font(.title)
                            .foregroundColor(.newSecondary)
                            .padding(.leading, 20)
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
                            }.padding(.leading)
                        }
                    }
                }
                VStack(alignment: .leading) {
                    Group {
                        Text("Cinema")
                            .fontWeight(.bold)
                            .font(.title)
                            .foregroundColor(.newSecondary)
                            .padding(.leading, 20)
                        ScrollView(.horizontal){
                            HStack(){
                                ForEach(model.cinema){
                                    event in
                                    NavigationLink(
                                        destination: MenuCardView(event: event)
                                    ) {
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
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
