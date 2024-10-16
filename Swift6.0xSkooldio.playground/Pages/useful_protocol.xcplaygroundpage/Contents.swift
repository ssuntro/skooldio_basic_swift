import Foundation

struct News: Identifiable, Hashable {
    let id = UUID()
    let title: String
    let description: String
    let rating: Int
   
}

extension News: Equatable {
    static func == (lhs: News, rhs: News) -> Bool {
        return lhs.title == rhs.title && lhs.description == rhs.description
    }
}
extension News: Comparable {
    static func < (lhs: News, rhs: News) -> Bool {
        lhs.rating < rhs.rating
    }
}


struct NewsDetail: Codable {
    let title: String
    let body: String
}

enum PinError: Error {
    case duplicateDigit
    case invalidInput(Character)
}
//throw PinError.duplicateDigit


struct Bike: CustomStringConvertible {
    let make: String
    let model: String
    
    var description: String {
        return "\(make) \(model)"
    }
}

