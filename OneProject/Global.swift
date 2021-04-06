//
//  Global.swift
//  OneProject
//
//  Created by Frederik Hjorth on 05/04/2021.
//

import Foundation

class Global: ObservableObject {
    @Published var isLoading = true
    
    
    func updateLoadingState(isLoading: Bool) {
        DispatchQueue.main.async {
            self.isLoading = isLoading
        }
    }
    
}
