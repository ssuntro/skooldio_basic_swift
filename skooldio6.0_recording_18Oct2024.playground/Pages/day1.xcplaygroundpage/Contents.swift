import UIKit

//class Person {
//    var name = ""
//}
//
//
//let name = "John"
//var surname = "Doe"
//
////name = "John1"
////surname = "Doe1"
//
//let a = URL(fileURLWithPath: "www.google.com")
//var b = URL(fileURLWithPath: "www.google.com") //where URL is a class.
//
//
//let a1 = Person()
//var b1 = Person()
//
//let age = 12
//var length = 5
//
//let isToggle = true
//var isEnabled = false
//
//
//
//// One line comment
///* The digits of pi are infinite,
//so instead I chose a close approximation.*/
//
//// TODO: fix number error
//// MARK: remake to ...
//// FIXME: fix ...
//
//
//let π = 3.14159
//let 一百 = 100
//let 🎲 = 6
//let mañana = "Tomorrow"
//let anzahlDerBücher = 15 // numberOfBooks
//let ชื่อ = "แอน"




//// MARK: string
//let greeting: String = "Hello, World!"
//
//// MARK: String Interpolation
//let name = "Anne"
//let code = 111
//let message = "\(name) Hi Hi, \(name) \(code)!"
//
//
//// MARK: String Concatenation
//let fullMessage = "Welcome back, " + name + "Anne!"
//
//// MARK: Multiline Strings
//let multilineString = """
//Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs.
//"""
//
//
//// MARK: Escape special character in String(available only in swift 5 or upper)
//////where \n is newline
//print("Line 1\nLine 2") // result in 2 lines
//print(#"Line 1\nLine 2"#) // result in one line, “Line 1\nLine 2”
//
//
//let text = "Lorem ipsum"
//print(text.count)
//print(text.isEmpty)
//print(text.uppercased())
//print(text.contains("ips"))
//let isContain = "Hello, World!".contains(/Hello/)
//print(text.split(separator: "\n"))
//
//
//// MARK: String Indexing for accessing characters.
//let str = "Hello"
//let firstChar = str[str.startIndex] // 'H'
//
//// MARK: Substring
//let start = str.firstIndex(of: "H")!
//let end = str.firstIndex(of: "l")!
//let substring = str[start..<end]
//let substring1 = str[..<end]
//
//// MARK: Unicode and Special Characters
//let unicodeString = "Café ☕️"
//let wiseWords = "\"Imagination is more important than knowledge\" - Einstein"
//let sparklingHeart = "\u{1F496}" // 💖, Unicode scalar U+1F496







//// MARK: String Interpolation
//var letter: Character = "A"
//print("The letter is \(letter)")
//
//// MARK: swift infer type string overs char
//let letter1: Character = "A"
//
//
//// MARK: relationship between char and string
//let catCharacters: [Character] = ["C", "a", "t", "!", "🐱"]
//String(catCharacters) // "Cat!🐱"
//
//for character in "Dog!🐶" {
//    print(character)
//}



//// MARK: Int. Int8 Int32, Int64, UInt, Int8, Int16,...
//var intVar: Int = 42
//var intVar1: Int = -42
//var uintVar: UInt = 42
////var uintVar2: UInt = -42
//
//// MARK: Float, Double
//var pi: Float = 3.14
//var e: Double = 2.71828
//
//// MARK: Bool. Possible values are true or false.
//let isToggled: Bool = true
//
//var byte:UInt8 = 0xAF
//var data = Data()




//// MARK - fun fact
//var largeUglyNumber = 1000000000
//var largePrettyNumber = 1_000_000_000
//
//// MARK: naming convension. var/let and function
//let pi = 3.141592
//var totalBalance = 1000
//"".split(separator: "\n")




//// MARK: Number operator
//// MARK: operator precedence. * / % -> + -
//var result = Int(1.1) - 3 * 4
//1 - (3 * 4)
//let mod = 8 % 6
//
//// MARK: power
//let x = pow(Double(2),Double(3))
//
//// MARK: Int opertator's shorthand
//result += 1 // left = left + right
//result = result + 1
//result *= 1
//result /= 1
//// MARK: String opertator's shorthand
//var aString = "Hi, "
//aString += "Ann"



//// MARK: array
//let numbers: [Int] = [1,2,3,4]
//var emptyArray = [Int]()
//emptyArray.append(2)
//emptyArray[0] = 10 //warning: can be runtime error, out of bound error
//print(emptyArray[0]) //warning: can be runtime error, out of bound error





//// MARK: Set
//let uniqueNumbers: Set<Int> = [1, 2, 3, 4, 5]
//
//var emptySet: Set<Int> = []
//emptySet.insert(6)
//emptySet.insert(6)
//emptySet.insert(7)
//emptySet.insert(5)
//print(emptySet)
//print(emptySet.contains(6))
//
//let nine = emptySet.remove(9)
//let six = emptySet.remove(6)









//// MARK: Dictionary. key-value pair
//let user: [String: String] = ["name": "John", "email": "john@example.com"]
//
//var emptyDictionary = [String: Int]()
//emptyDictionary["b"] = 20
//emptyDictionary["b"] = 200
//let result = emptyDictionary["b"]
//let result1 = emptyDictionary["c"]
//
//var aDictionary = ["a": 1, "b": 2, "c": 3]
//let a = aDictionary.updateValue(111, forKey: "a")
//let b = aDictionary.removeValue(forKey: "ak")
//let c = aDictionary.keys
//let d = aDictionary.values





// MARK: Range
//for number in 0...9 {
//    print(number) // Output: 0 1 2 3 4 5..9
//}
//
//
//let array = [ "a", "b", "c"]
//let closedRange = 1...2
//let aRange = 0..<3
//let upToTwo = ..<2
//let fromOne = 1...
//
//print(array[closedRange])
//print(array[aRange])// range of index
//print(array[upToTwo])
//print(array[fromOne])





// MARK: Collection operator
//[1, 2, 3, 4, 5].forEach { element in
//    print(element)
//} //foreach return nothing
//
//
//for (number, letter) in zip([1, 2, 3], ["a", "b", "c", "d"]) {
//    print("\(number): \(letter)")
//}

//let a = 5 //type infer as Int
//let b = 5.4 //type infer as Double
//let c = "A" //type infer as String
//let d = true //type infer as Bool
//
//print(type(of: a)) //check type of variable









var optional: Int? = 5 //An optional type
var implicitlyUnwrapped: Int! = nil //An implicitly unwrapped optional type



// MARK: Optional Chaining
optional?.description.count
let a = implicitlyUnwrapped?.description.count ?? 20
















//// MARK: Nil Coalescing Operator
//let a = optional ?? 0
//let b = implicitlyUnwrapped ?? 0

// MARK: guard let...else
//struct Demo {
//    func printOut() {
//        var optional: Int? = nil //An optional type
//        guard let unwrappedNumber = optional else {
//           print("optionalNumber is nil")
//           return
//        }
//        print(unwrappedNumber)
//        print(unwrappedNumber)
//        print(unwrappedNumber)
//        print(unwrappedNumber)
//    }
//    func printOut1() {
//        var implicitlyUnwrapped: Int! = nil //An implicitly unwrapped optional type
//        guard let unwrappedNumber = implicitlyUnwrapped else {
//           print("optionalNumber is nil")
//           return
//        }
//        print(unwrappedNumber)
//        print(unwrappedNumber)
//        print(unwrappedNumber)
//        print(unwrappedNumber)
//   }
//}
//Demo().printOut()
//Demo().printOut1()





// MARK: Forced Unwrapping
//optional!.description
//implicitlyUnwrapped.description


//// MARK: if let
//if let unwrappedNumber = optional {
//    print(unwrappedNumber)
//} else {
//    print("optionalNumber is nil")
//}
//
//if let unwrappedNumber = implicitlyUnwrapped {
//    print(unwrappedNumber)
//} else {
//    print("optionalNumber is nil")
//}
