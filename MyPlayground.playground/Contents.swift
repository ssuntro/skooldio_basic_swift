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




//MARK: enum and Custom Initializers
enum Temperature {
    case celsius(Double)
    case fahrenheit(Double)
    
    init(fromKelvin kelvin: Double) {
        self = .celsius(kelvin - 273.15)
    }
}
let c = Temperature.celsius(222)
let d = Temperature(fromKelvin: 222)
let e = Temperature.fahrenheit(111)









