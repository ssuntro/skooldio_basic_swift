import UIKit

//review again.
//definition of var vs let.
//"immutable by default" concept in sturct
struct ExampleStruct {
    let a: Double  //struct
    let b: NetworkError
    let c: String  //struct
    let d: [String]  // array of struct
    let e: UIView?  // optional class
    let rules: [(_ pin: String) -> Bool]
    let f: [String: Int]  //dictionary
}

enum NetworkError: Error {
    case noConnection
    case timeout
}

let pinRules: [(_ pin: String) -> Bool] = [
    { pin in pin.count == 4 },                        // Rule 1: must be exactly 4 characters
    { pin in pin.allSatisfy(\.isNumber) },            // Rule 2: must contain only digits
    { pin in Set(pin).count == pin.count }            // Rule 3: must not contain duplicate digits
]
let aa = ExampleStruct(
    a: 9,
    b: .timeout,
    c: "",
    d: ["", ""],
    e: nil,
    rules: pinRules,
    f: ["key": 11]
)

//aa.a = 11 //compile-time error
//aa.b = .noConnection //compile-time error



