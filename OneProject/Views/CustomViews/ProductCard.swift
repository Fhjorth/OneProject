//
//  ProductCard.swift
//  OneProject
//
//  Created by Frederik Hjorth on 28/07/2021.
//

import SwiftUI

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

//struct ProductCard_Previews: PreviewProvider {
//    static var previews: some View {
//        ProductCard()
//    }
//}
