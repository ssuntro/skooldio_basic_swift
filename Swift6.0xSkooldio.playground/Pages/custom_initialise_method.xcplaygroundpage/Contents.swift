// class
class Animal {
    var name: String
    var species: String
    
    init(name: String, species: String) {
        self.name = name
        self.species = species
    }
}
let animal = Animal(name: "Lion", species: "Panthera leo")


// struct
struct Person {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}
let person = Person(name: "John", age: 30)
print(person.name) // Output: John



// enum
enum Direction {
    case north, south, east, west
    
    init?(abbreviation: String) {
        switch abbreviation.lowercased() {
        case "n":
            self = .north
        case "s":
            self = .south
        case "e":
            self = .east
        case "w":
            self = .west
        default:
            return nil
        }
    }
}
// Note: for more detail about if...let. Please visit Nullable/Non-nullable chapter.
if let direction = Direction(abbreviation: "n") {
    // reach this line when direction is not null
    print(direction)
} else {
    // reach this line when direction is null
}
