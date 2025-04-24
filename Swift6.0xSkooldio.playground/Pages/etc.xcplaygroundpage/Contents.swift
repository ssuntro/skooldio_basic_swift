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







// what's new in swift 5, 6
// Swift Testing
//import SwiftTesting
//@Test
//func testPlayerScore() {
//    let player = Player(name: "Alex", score: 100)
//    XCTAssertEqual(player.score, 100)
//}







// swift 6 - Tuples now conform to Equatable, Comparable and Hashable
// Equatable
(1, 2, 3) == (1, 2, 3) // true
// Labels are not taken into account to check for equality.
(x: 0, y: 0) == (0, 0) // true

// Comparable
let origin = (x: 0, y: 0)
let randomPoint = (x: Int.random(in: 1 ... 10), y: Int.random(in: 1 ... 10))
(x: 0, y: 0) < (1, 0) // true
// Labels are not taken into account for comparision.
(x: 0, y: 0) < (1, 0) // true

// Hashable
let points = [(x: 0, y: 0), (x: 1, y: 2), (x: 0, y: 0)]
let uniquePoints = Set(points)
print (uniquePoints) // [(x: 0, y: 0), (x: 1, y: 2)]
// Labels are not taken into account to check for hash value.
(x: 0, y: 0).hashValue == (0, 0).hashValue // true



// etc - https://github.com/twostraws/whats-new-in-swift-6-0/tree/main, https://www.hackingwithswift.com/articles/269/whats-new-in-swift-6, https://medium.com/@aayushi9555/whats-new-in-swift-6-c3384bb93e63#:~:text=Swift%206%20brings%20a%20host%20of%20new%20features%20and%20improvements%20that%20make,enhanced%20concurrency, https://blog.swiftify.com/whats-new-in-swift-6-e875ca675a28#:~:text=Tuples%20Conform%20to,and%20Hashable



