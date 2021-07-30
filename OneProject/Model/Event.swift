//
//  Event.swift
//  OneProject
//
//  Created by Frederik Hjorth on 27/07/2021.
//

import Foundation

struct Event: Identifiable {
     var id = UUID()
     var aid: String
     var title: String
     var image: String
     var type: String
     var price: Double
     var food: [Menu]
     var drinks: [Menu]
     var snacks: [Menu]
}
