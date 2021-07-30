//
//  GridStackContainer.swift
//  OneProject
//
//  Created by Frederik Hjorth on 27/07/2021.
//

import SwiftUI

struct GridStackContainer<Content: View>: View {
    let rows: Int
    let colums: Int
    let content: (Int, Int) -> Content
    
    var body: some View {
        VStack {
            ForEach(0 ..< rows) { row in
                HStack {
                    ForEach(0 ..< self.colums) {colums in
                        self.content(rows, colums)
                    }
                }
            }
        }
    }
}
// A way to use the generic gridstack
/*
struct GridStackContainerContent: View {
    var body: some View {
        GridStackContainer(rows: 8, colums: 2) { row, col in
            VStack{
                Image(systemName: "\(row * 1 + col).circle")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100)
                    .padding(.all, 20)
                Text("R\(row) C\(col)")
            }
        }
    }
}

struct GridStackContainerContent_Previews: PreviewProvider {
    static var previews: some View {
        GridStackContainerContent()
    }
}
*/
