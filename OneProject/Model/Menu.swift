import Foundation

struct Menu {
    public var aid: String
    public var title: String
    public var description: String
    public var price: Double
    public var image: String
    
    init(aid: String, title: String, description: String, price: Double, image: String) {
        self.aid = aid
        self.title = title
        self.description = description
        self.price = price
        self.image = image
    }
}
