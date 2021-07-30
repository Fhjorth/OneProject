//
//  OrderView.swift
//  OneProject
//
//  Created by Frederik Hjorth on 27/07/2021.
//

import SwiftUI

struct OrderView: View {
    
    
    var body: some View {
        VStack {
            ScrollView {
                GridStackContainer(rows: 8, colums: 2) { rows, col in
                    VStack{
                        Image(systemName: "\(rows * 1 + col).circle")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100)
                            .padding(.all, 20)
                        Text("R\(rows) C\(col)")
                    }
                }
            }
        }
    }
    
}
//    struct OrderView_Previews: PreviewProvider {
//        static var previews: some View {
//            OrderView()
//        }
//    }
