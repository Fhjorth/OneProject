import Foundation

struct User: Identifiable {
    
    var id: String = UUID().uuidString
    var email: String
    var displayName: String
    
//    init(id: String, email: String, displayName: String) {
//        self.id = id
//        self.email = email
//        self.displayName = displayName
//    }
}
