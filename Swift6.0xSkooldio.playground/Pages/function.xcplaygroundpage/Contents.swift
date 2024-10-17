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
