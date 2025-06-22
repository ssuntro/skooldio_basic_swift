////MARK: Protocol Extensions with Constraints
//
////Note - Collection is protocol
//extension Collection {
//    func sum() -> Int {
//        return 5
//    }
//}
//
//let numbers = [1, 2, 3, 4]
//let total = numbers.sum() // 10
//
//// Won't work because String isn't Numeric
//let strings = ["a", "b", "c"]
//strings.sum() // Compiler error

////MARK: Protocol tips
//protocol Equatable {}
//protocol Identifiable {}
//
////struct News: Equatable, Identifiable {
////    // code ที่เกี่ยวข้องกับ Eq..Id
////}
//
////vs
//struct News {
//    //code อื่นๆ
//}
//extension News: Equatable {
//    //code ที่เกี่ยวกับ Equatable
//}
//extension News: Identifiable {
//    //code ที่เกี่ยวกับ Identifiable
//}

////MARK: raw value vs protocol in Enum
//enum Planet: Int {
//    case mercury = 0, venus, earth, mars
//}
//print(Planet.venus.rawValue)
//
//enum PinError: Error {
//    case duplicateDigit
//    case invalidInput(Character)
//}

//-----
//MARK: Afternoon
////MARK: Designated Initializer
//class Car {
//    var make: String
//    var model: String
//
//    // Designated initializer
//    init(make: String, model: String) {
//        self.make = make
//        self.model = model
//    }
//    init(make: String) {
//        self.make = make
//        self.model = "m5"
//    }
//}
//
//let myCar = Car(make: "Tesla", model: "Model 3")

////MARK: Convenience Initializer
//class Laptop {
//    var brand: String
//    var ram: Int
//
//    // Designated initializer
//    init(brand: String, ram: Int) {
//        self.brand = brand
//        self.ram = ram
//    }
//
//    // Convenience initializer
//    convenience init(brand: String) {
//        self.init(brand: brand, ram: 8)
//    }
//}
//let myLaptop = Laptop(brand: "Apple")

////MARK: Failable Initializer
//struct Age {
//    var value: Int
//
//    // Failable initializer returns nil if value is invalid
//    init?(value: Int) {
//        guard value >= 0 else { return nil }
//        self.value = value
//    }
//}
//
//let age = Age(value: 30)
//if let validAge = Age(value: 30) {
//    print("Age is \(validAge.value)")
//}

////MARK: Required Initializer
//class Animal {
//    var name: String
//
//    // Required initializer forces subclasses to implement it so it need inheritance and class is only eligible
//    required init(name: String) {
//        self.name = name
//    }
//}
//
//class Dog: Animal {
//    // Required by the superclass
//    required init(name: String) {
//        super.init(name: name)
//    }
//}
//let dog = Dog(name: "Buddy")

////MARK: Memberwise Initializer
//struct User {
//    var username: String
//    var age: Int
//    // Memberwise initializer is automatically provided
//}
//let user = User(username: "johndoe", age: 28)

////MARK: Custom Codable Initializer
//import Foundation
//
//let json = """
//{
//    "id": 1,
//    "name": "Gadget"
//}
//""".data(using: .utf8)!
//
//if let product = try? JSONDecoder().decode(Product.self, from: json) {
//    print(product)
//}
//
//struct Product: Codable {
//    var id: Int
//    var name: String
//
//    // Custom decoding logic
//    init(from decoder: Decoder) throws {
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        id = try container.decode(Int.self, forKey: .id)
//        name = try container.decode(String.self, forKey: .name)
//    }
//    enum CodingKeys: String, CodingKey {
//        case id, name
//    }
//}

//MARK: function and closure
////MARK: default parameter
//catSound()
//catSound(suffix: "Kati")
//catSound(count: 5)
//catSound(suffix: "Kati", count: 5)
//
////ต้องเขียน function ยังไง?
//
//func catSound(suffix: String? = nil, count: Int = 0) -> String {
//    return "Meow \(suffix ?? "") \(count)"
//}



////MARK: Function Signature Variants
//calculateSizing(width: 3)
////calculateSizing(3)
////calculateSizing(with: 3)
//func calculateSizing(width: Double) {}
//
//
//
////MARK: exercise
//findOccurrence(aString: "Lorem...", substring: "em")
//add(8, with: 4)
//concat(anArray: [1,2,3], with: 4)
//// ต้องเขียน function ยังไง?
//
//
//func findOccurrence(aString: String, substring: String) {}
//func add(_ a: Int, with b: Int) {}
//func concat(anArray: [Int], with concater: Int) {
////    anArray
////    concater
//}


//handlePeriodicTick(1...10)
////—-
//func handlePeriodicTick(_ range: ClosedRange<Int>) {
//        for tick in range {
//            print("Tick: \(tick)")
//        }
// }






////MARK: Simplify lv(s) of function
////No shorthand/simplify
//func catSound(suffix: String, count: Int) -> String {
//    return "Meow \(suffix) \(count)"
//}
//
////Function as a variable
//let catSound1 = { (suffix: String, count: Int) -> String in
//    "Meow \(suffix) \(count)"
//}
////let a: Int
//let catSound2: (String, Int) -> String = { suffix, count  in
//    "Meow \(suffix) \(count)"
//}
//
////Remove the Return Type and Use Type Inference(one time used)
//let catSound3: () = { (suffix: String) in
//    print("Meow \(suffix)")
//}("Annja")
////let a = catSound(suffix: "", count: 1)
//
////Use Shorthand Argument Names(one time used)
//let catSound4: () = { print("Meow \($0) \($1)") }("happy", 4)





////MARK: function and closure. value type vs ref type?
//func makePrinter() -> () -> Void {
//    var counter = 0
//    func printer() {
//        counter += 1
//        print("Printed \(counter) times")
//    }
//    return printer
//}
//
//let a = makePrinter()
//let b = a
//
//a() // Printed 1 times
//b() // Printed 2 times
//a() // Printed 3 times


































////MARK: Shorthand/Simplify lv(s) of Anonymous Functions
//// 1. Full closure syntax
//let numbers = [1, 2, 3, 4, 5]
//let doubled = numbers.map({ (number: Int) -> Int in
//    return number * 2
//})
//
//// 2. Type inference
//let doubled2 = numbers.map({ number in
//    return number * 2
//})
//
//// 3. Implicit returns
//let doubled3 = numbers.map({ number in number * 2 })
//
//// 4. Shorthand argument names
//let doubled4 = numbers.map({ $0 * 2 })
//
//// 5. Trailing closure
//let doubled5 = numbers.map { $0 * 2 }




////exercise
//var function1: () -> Void = {
//    print("Hello, World!")
//}
//var function2 = function1
//function2 = {
//    print("Goodbye, World!")
//}
//function1()
//function2()


//MARK: fun fact
func sumOfNumbers(numbers: Int...) -> Int {
    return numbers.reduce(0, +)
}
sumOfNumbers(numbers: 1,2,3,4,5,6)














////MARK: error handling
//struct User {
//    var name: String
//    func isNetworkAvailable() -> Bool {
//        false
//    }
//    func fetchUser(id: String) throws(NetworkError) -> User {
//        guard isNetworkAvailable() else {
//            // exe when isNetworkAvailable is false
//            throw NetworkError.serverUnavailable
//        }
//        // Success case - return user
//        // exe when isNetworkAvailable is true
//        return User(name: "John Doe")
//
//        defer {
//            print("AAA")
//        }
//
//    }
//}
//enum NetworkError: Error {
//    case serverUnavailable
//}
//
//let ann = User(name: "Siroratt")
//do {
//    try ann.fetchUser(id: "111")
//} catch {
//    print("error jaa")
//}
