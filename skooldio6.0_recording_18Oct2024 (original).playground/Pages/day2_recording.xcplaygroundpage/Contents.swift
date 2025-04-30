//: [Previous](@previous)

// Note: // ! in diff context negate or forced upwrapping,
//is, as, as?, and as!, explicait type casting

//import Foundation
//import UIKit

//If, if else
// waterfall
//let score = 85
//if score >= 90 {
//    print("Grade: A")
//} else if score >= 80 {
//    print("Grade: B")
//} else {
//    print("Grade: C or below")
//}
//
////nested if
//// waterfall
////avoid exceed 3 ชั้น
////same layer condition base on same variable
////can combine if else & nested if
//
//let temperature = 75
//let roomType = "A"
//if temperature > 90 {
//    print("It's very hot")
//} else if temperature > 80 {
//    print("It's hot")
//} else {
//    //    else start block
//    if temperature > 70 {
//        print("It's warm")
//    } else {
//        print("It's cold")
//    }
//    //    else end block
//}

//MARK: switch
//waterfall
//exhaustive matching
//multiple cases
//let grade = "B"
//switch grade {
//case "A":
//    print("Excellent!")
//case "B":
//    print("Good job!")
//case "C", "D", "E", "AED":
//    print("Needs improvement")
//default:
//    print("Invalid grade")
//}

//auto break even overlap cases
//fallthrough
//let age = 25
//switch age {
//case 0..<13:
//    print("Child")
//case 13..<30:
//    print("Teenager")
//    fallthrough
//case 20...65:
//    print("Adult")
//    fallthrough
//default:
//    print("Senior")
//}

////MARK: if vs switch
////example#1
//let a = 1
//let b = 2
//if a < b {
//    print("\(a) is less than \(b)")
//}
//if b >= 10 {
//    print("\(b) is greater than or equal to 10")
//}
//if a == 10 {
//    print("\(a) is equal to 10")
//}
//
//
//
//
//
////example#2
//let isRaining = true
//if isRaining {
//    print("Take an umbrella")
//} else {
//    print("Enjoy the sun!")
//}
//
//
//
////example#3
//let dayOfWeek = "Monday"
//switch dayOfWeek {
//case "Monday", "Tuesday", "Wednesday":
//    print("Weekday")
//case "Saturday", "Sunday":
//    print("Weekend")
//default:
//    print("Invalid day")
//}

////MARK: guard...else
//func demo() {
//    guard 1 > 0 else {
//        print("1>0 is false.")
//        return
//    }
//    print("1>0 is true.")
//}
//demo()
////transform to if...else form?
//
//func demo1() {
//    if 1 > 0 {
//        // eval this line when “0>0” is true
//        print("1>0 is true.")
//    } else {
//        print("Invalid age. Please provide a positive number.")
//    }
//}
//
//////conclusion
//func conclusion() {
//    guard 0 > 0 else {
//        print("0 > 0 is false.")
//        return // Required return or throw statement(error handling)
//    }
//    print("0 > 0 is true.")
//}

////MARK: loops
////For-in loop
//// side effect, break, continue
//var a = 0
//for fruit in ["Apple", "Banana", "Cherry"] {
//    print(fruit)
//    a = 111
//    break
////    continue
//}
//
////For-each loop
//["Apple", "Banana", "Cherry"] .forEach { fruit in
//    print(fruit)
//    a = 11
////    break
////    continue
//}

////While loop
//var count = 3
//while count < 3 {
//    print("While count: \(count)")
//    count += 1
//}
//
//
////Repeat-While loop
//var number = 3
//repeat {
//    print("Repeat count: \(number)")
//    number = number + 1
//} while number < 3

////The closed range operator (...)
//for i in -5...5 {
//    print("Number: \(i)")
//}
////The half-open range operator (..<)
//for i in -5..<5 {
//    print("Number: \(i)")
//}
//
////The stride function(ava in Swift version: 5.10 or upper)
//for i in stride(from: 0, to: 2, by: 0.1) {
//    print(i)
//}
//for i in stride(from: 10, through: 0, by: -2) {
//    print(i)
//}

////loop.3 control Transfer statements
////What’s result? Are they diff?
//
//func demoControlTransferStatements() {
//    for number in 1...10 {
//        print("\(number) ")
//        if number == 5 {
//            print("Skipping number 5...")
//            continue
//        }
//        if number == 8 {
//            print("Breaking loop at number 8.")
//            break
//        }
////        if number == 7 {
////            print("Returning from function at number 7.")
////            return
////        }
//    }
//    print("End of demo.")
//}
//demoControlTransferStatements()






//MARK: tips
//where
for number in 1...10 where number % 2 == 0 {
    print("Even number: \(number)")
}
//array enumerate
let a = ["Apple", "Banana", "Cherry"]
for (index, fruit) in a.enumerated() {
    print("Index \(index): \(fruit)")
}
