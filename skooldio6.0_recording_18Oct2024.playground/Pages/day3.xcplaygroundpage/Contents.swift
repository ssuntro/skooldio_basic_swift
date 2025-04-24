import Foundation

protocol Greeter {
    func greet()
}

// Default implementation using a protocol extension
//extension Greeter {
//    func greet() {
//        print("Hello from protocol extension!")
//    }
//}

// Struct conforming to Greeter but NOT overriding greet()
struct DefaultGreeter: Greeter {
    func greet() {
        print("aaa")
    }
    
    // Uses default implementation
}

// Struct overriding greet() with custom behavior
struct CustomGreeter: Greeter {
    func greet() {
        print("Hi from CustomGreeter!")
    }
}

// Demonstration
let greeter1: Greeter = DefaultGreeter()
greeter1.greet() // Output: Hello from protocol extension!

let greeter2: Greeter = CustomGreeter()
greeter2.greet() // Output: Hi from CustomGreeter!




