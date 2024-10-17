import Foundation
//func abc() {
//    var objCArray: NSMutableArray = ["Swift", "Objective-C", "Java", "Python"]
//    var a: NSString
//    var persons1 = Array<String>()
//    for _ in 0..<5 {
//        persons1.append(String())
//    }
//    let arrayOfPersons = persons1
//    
//    
////        arrayOfPersons.append(String())
////        arrayOfPersons = [String]()
//    
//    
////        NSString is class(ref type) whereas String is struct(value type).
//}
//
//func aa() {
//    class Person {
//        var age = 0
//    }
//    let a = Person()
//    var b = Person()
//    a = b
//    b = a
//    a.age = 9
//}


// what's new in swift 5
// String - new way to escapt special char such as \n in this context
print("Line 1\nLine 2")
print(#"Line 1\nLine 2"#)

// introduce Result type
enum MathError: Error {
    case divideByZero
}

func divide(_ number: Int, by divisor: Int) -> Result<Int, MathError> {
    if divisor == 0 {
        return .failure(.divideByZero)
    } else {
        return .success(number / divisor)
    }
}

let result = divide(10, by: 2)
// result will be .success(5)

let badResult = divide(10, by: 0) // badResult will be .failure(.divideByZero)


// Int - isMultiple
let number = 10
if number.isMultiple(of: 2) {
    print("It's an even number!")
}


// what's new in swift 6
// Better Concurrency Checking
actor Player {
    var score: Int = 0

    func updateScore(_ newScore: Int) {
        score = newScore
    }
}

let player = Player()
Task {
    await player.updateScore(100)
    // This is safe because Swift 6 knows it's okay!
}

// Typed Throws:
enum GameError: Error {
    case outOfLives
    case levelNotFound
}

func playGame() throws(GameError) {
    // If something goes wrong, we know it will be a GameError
}


// Macros
//@MyMacro // The macro might automatically add things like printInfo() method
//struct Player {
//    var name: String
//    var score: Int
//}



// Swift Testing
//import SwiftTesting
//@Test
//func testPlayerScore() {
//    let player = Player(name: "Alex", score: 100)
//    XCTAssertEqual(player.score, 100)
//}



// etc - https://github.com/twostraws/whats-new-in-swift-6-0/tree/main, https://www.hackingwithswift.com/articles/269/whats-new-in-swift-6
