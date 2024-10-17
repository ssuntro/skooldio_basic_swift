var function1: () -> Void = {
    print("Hello, World!")
}
var function2 = function1
function2 = {
    print("Goodbye, World!")
}
function1()
function2() 


enum Average {
    case mode
}
func calculateMedian(_ numbers: [Int]) -> Double { return 2.2 }
func calculate(mode: Average, with numbers: [Int]) -> Double { return 1.1 }
// caller
let numbers = [1, 2, 9, 99, 1014, 23, 5]
let median = calculateMedian(numbers)
let mode = calculate(mode: Average.mode, with: numbers)


func createCelciusFrom(kelvin: Double) -> Double { return 2.2 }
func index(_ startIndex: Int, offsetBy: Int) -> String { return "" }
let celcius = createCelciusFrom(kelvin: 222)
let startIndex = 1
let aString = index(startIndex, offsetBy: 55)





// Simplify at level 3: Remove the return type and use type inference
let sortedNumbersLv3 = [3, 1, 4, 1, 5, 9].sorted(by: { (a, b) in
    a > b
})
// Simplify at level 4: Use shorthand argument names
let sortedNumbersLv4 = [3, 1, 4, 1, 5, 9].sorted(by: {
    $0 > $1
})
sortedNumbersLv3 // [9, 5, 4, 3, 1, 1]
sortedNumbersLv4 // [9, 5, 4, 3, 1, 1]
