////MARK: Tips#1 Use Where Clause for Filtering
////Implement where clauses for cleaner filtering:
//for number in 1...10 where number % 2 == 0 {
//    print("Even number: \(number)")
//}
//
////MARK: Tips#2 Use Enumerated for Index Access
////When you need both index and value:
//for (index, fruit) in ["Apple", "Banana", "Cherry"].enumerated() {
//    print("Index \(index): \(fruit)")
//}
//















////MARK: CAUSION#1 Infinite loop
////especially while, repeat-while loop
//var runWhileLoop = true
//while runWhileLoop {
//    print("This will never execute")
//}
////MARK: CAUSION#2 Performance aspect
////Consider computational complexity in nested loops:
//let n = 100
//for i in 1...n {
//    for j in 1...n {
//        // O(n²) complexity. Avoid and Perform only necessary in async thread when needed.
//    }
//}
////MARK: CAUSION#3 Misuse
////Use loop to find item or remove duplication -> proper data structure like set might be a better solution
 

//enum Status {
//    case success, failure
//    func toString() -> String {
//        switch self {
//        case .success:
//            return "success"
//        case .failure:
//            return "failure"
//        }
//    }
//    //only computed property, get-only property
//    var toString1: String {
//        if self == .success {
//            return "success"
//        }
//        return "failure"
//    }
//    var desription: String {
//        return "Status to identify system states"
//    }
//}
//var a = Status.success
//a.toString()
//a.toString1








////Enum raw value
//enum AnimalSound: String {
//    case human
//    case dog = "Woof"
//    case cow = "Moo"
//    case fox = "DingDing"
//}
//let a = AnimalSound.fox
//let animal = AnimalSound.init(rawValue: "human")
//let animal1 = AnimalSound.init(rawValue: "Human")
//
//
//// Safe by design
//let userInput = "Human"
//if let sound = AnimalSound(rawValue: userInput) {
////    handle(sound: sound)
//} else {
//    print("⚠️ Invalid input")
//}
//let b = AnimalSound(rawValue: userInput) ?? .fox

//enum Planet: Int {
//    case mercury, venus, earth, mars
//}
//let b = Planet.mars
//b.rawValue
//let targetPlanet = Planet(rawValue: 3)














// Associated type in enum
//enum UserAction {
//    case login(username: String, password: String)
//    case logout
//}
//
//let action = UserAction.login(username: "john_doe", password: "12345")
//switch action {
//case .login(let ee, _):
//    print("User \(ee) is logging in.")
//case .logout:
//    print("User is logging out.")
//}

//exercise
//enum UserAction {
//    case login(username: String, password: String)
//    case logout(reason: String)
//}
//let action = UserAction.login(username: "john_doe", password: "12345")
//
//if case .login(let ee, _) = action {
//    print("Got data: \(ee)")
//} else {
//    print("Failed to get data.")
//}




//MARK: enum & switch case
//enum Direction {
//    case north, south, east, west
//    var distance: Double {
//        switch self {
//        case .north:
//            return 22.34
//        case .east:
//            return -2.33
//        case .south:
//            return 34.2
//        case .west:
//            return 11
//        }
//    }
//}
//let a = Direction.north
//a.distance
//
//
//
//
//
////MARK: associated type in enum & switch case
//enum Status {
//    case success(message: String?)
//    case failure(error: String?)
//}
//let currentStatus = Status.success(message: "Data loaded successfully")
//
//switch currentStatus {
//case .success(let message?):
//    print("Success: \(message)")
//case .success(nil):
//    print("Success with no message")
//case .failure(let error?):
//    print("Failure: \(error)")
//case .failure(nil):
//    print("Failure with no error")
//}

////MARK: enum & exhaustive switch case
//enum Direction {
//    case north, south, east, west, ll
//    var distance: Double {
//        switch self {
//        case .north:
//            return 22.34
//        case .east:
//            return -2.33
//        case .south:
//            return 34.2
//        case .west:
//            return 11
//        case .ll:
//            return 111
//        }
//    }
//}
////MARK: enum and Custom Initializers
//enum Temperature {
//    case celsius(Double)
//    case fahrenheit(Double)
//    
//    init(fromKelvin kelvin: Double) {
//        self = .celsius(kelvin - 273.15)
//    }
//}
//let c = Temperature.celsius(222)
//let d = Temperature(fromKelvin: 222)




////MARK: enum and Custom Initializers
//enum Temperature {
//    case celsius(Double)
//    case fahrenheit(Double)
//    
//    init(fromKelvin kelvin: Double) {
//        self = .celsius(kelvin - 273.15)
//    }
//}
//let c = Temperature.celsius(222)
//let d = Temperature(fromKelvin: 222)
//let e = Temperature.fahrenheit(111)




////MARK: basic Tuple
//let unnamedTuple = ("John")
//let unnamedTuple1 = ("John", "Doe", 30)
//print(unnamedTuple)
//print(unnamedTuple1.0)
//print(unnamedTuple1.1)
//print(unnamedTuple1.2)
//let http404Error: (Int, String) = (404, "Not Found")

////MARK: named tuple
//let person: (name: String, age: Int) = (name: "Alex", age: 30)
//print(person.name)
//let namedTuple = (firstName: "John", lastName: "Doe", age: 30)
//print(namedTuple.firstName)
//
//typealias NameTuple = (firstName: String, middleName: String?)
//var tupleArray: [NameTuple] = []
//tupleArray.append( (firstName: "Bob", middleName: nil) )
//tupleArray.append( (firstName: "Tom", middleName: "Smith") )
//
////MARK: deconstruct Data
//func getCoordinate() -> (Double, Double) {
//    return (2.3, 134)
//}
//
//let (_, long) = getCoordinate()
//print(long)



////MARK: Switch...case & tuple
////example1
//let coordinates = (3, "3")
//switch coordinates {
//case (0, "0"):
//    print("Origin")
//case (let x, "0"):
//    print("On the X-axis at \(x)")
//case (0, let y):
//    print("On the Y-axis at \(y)")
//case (let x, let y) where x == Int(y):
//    print("On the line x = y")
//default: //use with care
//    print("Somewhere else")
//}
////example2
//let person: (name: String?, age: Int?) = ("Alice", nil)
//switch person {
//case (nil, nil):
//    print("No information available")
//case (let name?, nil):
//    print("\(name) has no age provided")
//case (nil, let age?):
//    print("Anonymous person, age \(age)")
//case let (name?, age?):
//    print("\(name) is \(age) years old")
//}



////MARK: Loop & tuple
//let students: [(name: String, grade: Int)] = [
//    (name: "Alice", grade: 90),
//    (name: "Bob", grade: 85),
//    (name: "Charlie", grade: 78)
//]
//
//for (name, grade) in students where name == "Alice" {
//    print("\(name) scored \(grade) marks.")
//}


////MARK: struct & Custom initializer
//import Foundation
//struct Book {
//    var title: String
//    var author: String
//    var yearPublished: Int
//    // Custom initializer
//    init(title: String = "", author: String = "", year: Int = 1999) {
//        self.title = title
//        self.author = author
//        self.yearPublished = year
//    }
//    // Another custom initializer with default year
//    init(isbn: String) {
//        self.title = "unknown"
//        self.author = "unknown"
//        self.yearPublished = Calendar.current.component(.year, from: Date())
//    }
//}
//let a = Book(isbn: "")
//let b = Book(title: "", author: "", year: 1999)






////MARK: struct. value type vs reference type
//struct Person {
//    var firstName: String
//    var lastName: String
//    var age: Int
//    func fullName() -> String {
//        return "\(firstName) \(lastName)"
//    }
//}
//
//var person1 = Person(firstName: "John", lastName: "Doe", age: 30)
//let person2 = person1
//person1.firstName = "Anne"
//
//print(person1.fullName()) //what's outcome
//print(person2.fullName()) //what's outcome







////MARK: "Struct is immutable by default" concept in struct
//struct Counter {
//    var count: Int
//    var name: String
//    mutating func increment() {
//        count += 1
//    }
//}
//var counter = Counter(count: 1, name: "")
//counter.count = 11
//counter.increment()




////MARK: basic class
//class Person {
//    var firstName: String
//    var lastName: String
//    var age: Int
//    init(firstName: String, lastName: String, age: Int) {
//        self.firstName = firstName
//        self.lastName = lastName
//        self.age = age
//    }
//    var fullName: String {
//        return "\(firstName) \(lastName)"
//    }
//}
//var person1 = Person(firstName: "John", lastName: "Doe", age: 30)
//let person2 = person1
//person1.firstName = "Anne"
//
//print(person1.fullName) //what's outcome
//print(person2.fullName) //what's outcome




////MARK: class inheritance
//class Animal {
//    var name: String
//
//    init(name: String) {
//        self.name = name
//    }
//    func speak() {
//        print("\(name) makes a sound")
//    }
//}
//class Cat: Animal {
//    override func speak() {
//        print("\(name) meows")
//    }
//}
//class Dog: Animal {
//    override func speak() {
//        print("\(name) barks")
//    }
//}
//
//
//let animals: [Animal] = [Dog(name: "Rex"), Cat(name: "Whiskers")]
//for animal in animals {
//    animal.speak() // Polymorphism: calls correct method based on runtime type
//}
//
//// 3 key use cases of class inheritance in general
////1. Code reuse
////2. Polymorphism
////3. Extensibility: You can add new subclasses without changing existing code.



////MARK: 🌧️Inheritance down side
//// Let’s say we add Flying behavior to Bird:
//class Animal {}
//class Bird: Animal {
//    func fly() {
//        print("flying")
//    }
//    //....
//}
//// Now suppose we add a Penguin, which is a Bird... but it can’t fly:
//class Penguin: Bird {
//    override func fly() {
//        // throw CancellationError()
//        print("Oops! Penguins can't fly.")
//    }
//}
//// Now we have a problem:
//let penguin = Penguin()
//penguin.fly() // Makes no sense: Penguins shouldn't be forced to fly







////MARK: A final class - cannot be subclassed
//final class PaymentProcessor {
//    func process(amount: Double) {
//        print("Processing payment of $\(amount)")
//    }
//}
//
////// This will cause a compile-time error if uncommented:
//// class CustomProcessor: PaymentProcessor {
////     override func process(amount: Double) {
////         print("Custom processing of $\(amount)")
////     }
//// }
//
//let processor = PaymentProcessor()
//processor.process(amount: 99.99)







////MARK: basic protocol
//protocol Identifiable {
//    var id: String { get }
//}
//
////conformation
//struct User: Identifiable {
//    var id: String //absent can lead to compiler error
//    var name: String
//}
//
////not conformation
//class Product {
//    var id: String
//    var price: Double
//
//    init(id: String, price: Double) {
//        self.id = id
//        self.price = price
//    }
//}


//MARK: Protocol extension
protocol Greeter {
    func greet()
}

// Default implementation using a protocol extension
extension Greeter {
    func greet() {
        print("Hello from protocol extension!")
    }
}

// Struct conforming to Greeter but NOT overriding greet()
struct DefaultGreeter: Greeter {
    // Uses default implementation
}

// Struct overriding greet() with custom behavior
struct CustomGreeter: Greeter {
    func greet() {
        print("Hi from CustomGreeter!")
    }
}


