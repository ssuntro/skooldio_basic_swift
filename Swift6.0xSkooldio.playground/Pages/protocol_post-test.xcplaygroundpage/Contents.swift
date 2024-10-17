struct CustomString {
    let value: String
}

extension CustomString: Comparable {
    static func < (lhs: CustomString, rhs: CustomString) -> Bool {
       
        if lhs.value.count != rhs.value.count {
            return lhs.value.count < rhs.value.count
        }
        return lhs.value < rhs.value
    }
}
extension CustomString: Equatable {
    static func == (lhs: CustomString, rhs: CustomString) -> Bool {
        return lhs.value == rhs.value
    }
}
let str1 = CustomString(value: "apple")
let str2 = CustomString(value: "banana")
let str3 = CustomString(value: "pear")

assert(str1 < str2, "Assertion failed: str1 should be less than str2")
assert(!(str2 < str3), "Assertion failed: str2 should not be less than str3")
assert(str1 == CustomString(value: "apple"), "Assertion failed: str1 should be equal to a new CustomString with value 'apple'")
