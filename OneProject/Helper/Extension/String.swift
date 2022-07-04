import Foundation

extension String {
    static func localize(key: String, comment: String = "") -> String {
        return NSLocalizedString(key, comment: comment)
    }
}
