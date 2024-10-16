
//switch case
let number = 5
switch number {
    case 0:
        print("Zero")
    case 1...4:
        print("A few")
    case 5...10:
        print("Several")
    default:
        print("Many")
}

// Pattern Matching with Tuples
let point = (0, 0)
switch point {
    case (0, 0):
        print("Origin")
    case (_, 0):
        print("On the x-axis")
    case (0, _):
        print("On the y-axis")
    default:
        print("Somewhere else")
}

// Type Casting Pattern
let items: [Any] = [5, "Bill", 6.7, Dog()]
for item in items {
    switch item {
        case is Int:
            print("It's an Int")
        case let s as String:
            print("It's a String: \\(s)")
        case is Double:
            print("It's a Double")
        case is Dog:
            print("It's a Dog")
        default:
            print("Type not recognized")
    }
}

// Value-Binding Pattern
let coordinate = (5, -3)
switch coordinate {
    case let (x, y):
        print("Coordinate: \\(x), \\(y)")
}

// Pattern Matching with Where Clauses
let coordinate = (5, -3)
switch coordinate {
    case let (x, _) where x > 10:
        print("This coordinate is way to the right of the x axis. \\(x)")
    default:
        print("Coordinate doesn't meet the condition")
}


// Pattern Matching with Enums
enum DataError: Error {
    case writingError(localizedDescription: String, file: Data)
    case readingError(localizedDescription: String, fileURL: URL)
    case unknownError
}

let error = DataError.writingError(localizedDescription: "Error writing file", file: Data())

switch error {
    case .writingError(let description, let data):
        print("Could write data \\(data) because \\(description)")
    case .readingError(let description, let url):
        print("Couldn't read file at \\(url) because \\(description)")
    case .unknownError:
        print("Unknown error")
}
