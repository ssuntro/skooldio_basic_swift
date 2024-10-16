Array(repeating: 5, count: 2)



//// x. Use `flatMap` to get a list of all words in all book titles
//let allWords = books.flatMap { $0.title.split(separator: " ") }
let titles = ["Harry Potter and the Chamber of Secrets", "The Myth of Sisyphus and Other Essays", "The Stranger"]
let a = titles.flatMap { $0.split(separator: " ") }
print("usage of flatMap: " + a.description)

let uniqueCharacters = Set(titles.flatMap { $0.lowercased() })
    .sorted()
    .filter { $0.isLetter }
// without filter
[" ", "a", "b", "c", "d", "e", "f", "g", "h", "i", "m", "n", "o", "p", "r", "s", "t", "u", "y"]
// with filter
["a", "b", "c", "d", "e", "f", "g", "h", "i", "m", "n", "o", "p", "r", "s", "t", "u", "y"]
print("Unique characters in alphabetical order:")
print(uniqueCharacters)
















//// x. Use `reduce` to find the total number of years between all books' publish dates
//let totalYearSpan = books.reduce(0) { acc, book in
//    return acc + (2024 - book.publishYear)
//}
let yearsOfBirth = [1984, 1999, 1800, 1789, 2000]
let totalYearSpan = yearsOfBirth.reduce(0) { acc, year in
    return acc + (2024 - year)
}

func countVowels(in string: String) -> Int {
    let vowels: Set<Character> = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
    return string.reduce(0) { count, character in
        if vowels.contains(character) {
            print(character)
            return count + 1
        } else { return count }
    }
}
let sentence = "How many vowels are in this sentence?"
countVowels(in: sentence) // 11


