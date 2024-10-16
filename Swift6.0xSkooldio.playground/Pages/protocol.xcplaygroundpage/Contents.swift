protocol Describable {
    var description: String { get }
    func describe() -> String
}


struct Book: Describable {
    var title: String
    var author: String
    
    var description: String {
        return "\(title) by \(author)"
    }
    
    func describe() -> String {
        return "Book: \(description)"
    }
}

class Car: Describable {
    var make: String
    var model: String
    
    init(make: String, model: String) {
        self.make = make
        self.model = model
    }
    
    var description: String {
        return "\(make) \(model)"
    }
    
    func describe() -> String {
        return "Car: \(description)"
    }
}

enum Direction: Describable {
    case north, south, east, west
    
    var description: String {
        switch self {
        case .north: return "North"
        case .south: return "South"
        case .east: return "East"
        case .west: return "West"
        }
    }
    
    func describe() -> String {
        return "Direction: \(description)"
    }
}


let book = Book(title: "1984", author: "George Orwell")
print(book.describe()) // Output: Book: 1984 by George Orwell

let car = Car(make: "Tesla", model: "Model S")
print(car.describe()) // Output: Car: Tesla Model S

let direction = Direction.north
print(direction.describe()) // Output: Direction: North


struct Student {
    let name: String
}
Student(name: "")




//useful protocol
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


// Example of Error protocol
enum PinError: Error {
    case duplicateDigit
    case invalidInput(Character)
}
//throw PinError.duplicateDigit


// Example of CustomStringConvertible protocol
struct Bike: CustomStringConvertible {
    let make: String
    let model: String
    
    var description: String {
        return "\(make) \(model)"
    }
}


