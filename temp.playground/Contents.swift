import UIKit

//review again.
//GOAL: DEMO VAR/LET + VALUE TYPE VS REF TYPE
//key message: ถึงเปน let หมด ก้ยังค่าเปลี่ยนได้เพราะ ref type
//definition of var vs let.
//"immutable by default" concept in sturct
// ref type in swift = closure, function, and class
struct ExampleStruct {
    let a: Double  //struct
    let b: NetworkError
    let c: String  //struct
//    let d: [String]  // array of struct
    let e: UIView?  // optional class
    let rules: [(_ pin: String) -> Bool]
    var rule: (_ pin: String) -> Bool
}

enum NetworkError: Error {
    case noConnection
    case timeout
}

var pinRules: [(_ pin: String) -> Bool] = [
    { pin in pin.count == 4 },                        // Rule 1: must be exactly 4 characters
    { pin in pin.allSatisfy(\.isNumber) },            // Rule 2: must contain only digits
    { pin in Set(pin).count == pin.count }            // Rule 3: must not contain duplicate digits
]
var rule: (_ pin: String) -> Bool = { pin in return true }
let aa = ExampleStruct(
    a: 9,
    b: .timeout,
    c: "",
//    d: ["", ""],
    e: UIView(), //nil
    rules: pinRules,
    rule: rule
)

//aa.a = 11 //compile-time error
//aa.b = .noConnection //compile-time error

//aa.d.append("") //to prevent compiler-error. aa and d need to be var
aa.e!.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
//aa.rules.append({ _ in true }) //compile-time error due to array
pinRules[0] = { pin in return false }
aa.rules[0]("3333")
//aa.rule = { pin in return false } //compile-time error




//MARK: function and closure to demo

// A closure that captures and modifies a variable
func makeCounter() -> () -> Int {
    var count = 0
    return {
        count = count + 1
        return count
    }
}

let counterA = makeCounter()
let counterB = counterA // same reference

print(counterA()) // 1
print(counterB()) // 2
print(counterA()) // 3
