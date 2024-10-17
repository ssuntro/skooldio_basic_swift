// solution without map operator
func reverseWordsInString(_ input: String) -> String {
    // Split the input string into words
    let words = input.split(separator: " ")
    
    var result = ""
    for (index, word) in words.enumerated() {
        // Reverse the current word
        let reversedWord = String(word.reversed())
        
        // Add the reversed word to the result
        result += reversedWord
        
        // Add a space after each word except the last one
        if index < words.count - 1 {
            result += " "
        }
    }
    
    return result
}

// Bonus - solution with map operator
func reverseWordsInStringWithMap(_ input: String) -> String {
    // Split the input string into words
    let words = input.split(separator: " ")
    
    // Reverse each word
    let reversedWords = words.map { String($0.reversed()) }
    
    // Join the reversed words back into a single string
    let result = reversedWords.joined(separator: " ")
    
    return result
}

let input = "Hello World from Swift"
let output = reverseWordsInString(input)
print(output) // "olleH dlroW morf tfiwS"
