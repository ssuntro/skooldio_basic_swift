Array(repeating: 5, count: 2)

// intro
var persons1 = [String]()
for _ in 0..<5 {
            persons1.append(String())
}
let arrayOfPersons = persons1
let arrayOfPersons1 = (0..<5).map { _ in String() }


// filter
let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
let evenNumbers = numbers.filter { $0 % 2 == 0 }
evenNumbers //[2, 4, 6, 8, 10]




// map
let doubledNumbers = numbers.map { $0 * 2 }
doubledNumbers //[2, 4, 6, 8, 10, 12, 14, 16, 18, 20]

let names = ["alice", "bob", "charlie"]
let uppercaseNames = names.map { $0.uppercased() }
uppercaseNames // ["ALICE", "BOB", "CHARLIE"]

struct Book {
    let title: String
    let author: String
}

let books = [
    Book(title: "1984", author: "George Orwell"),
    Book(title: "Harry potter", author: "JK")
]

let bookTitles = books.map { $0.title }
bookTitles // ["1984", "Harry potter"]





// compactmap
let stringNumbers = ["1", "2", "three", "4", "5"]
let numbers1 = stringNumbers.compactMap { Int($0) }
numbers1 // [1, 2, 4, 5]

let optionalNumbers: [Int?] = [1, nil, 3, nil, 5]
let nonNilNumbers = optionalNumbers.compactMap { $0 }
nonNilNumbers // [1, 3, 5]

let dict = ["a": 1, "b": 2, "c": nil, "d": 4]
let values = dict.compactMap { $0.value }
values // [1, 2, 4]




// flatmap
let mapped = [1, 2, 3, 4].map { Array(repeating: $0, count: $0) }
mapped // [1, 2, 2, 3, 3, 3, 4, 4, 4, 4], [4, 4, 4, 4]
let flatMapped = [1, 2, 3, 4].flatMap { Array(repeating: $0, count: $0) }
flatMapped // [1, 2, 2, 3, 3, 3, 4, 4, 4, 4]
// flatmap
let nestedArrays = [[1, 2], [3, 4], [5, 6]]
let flattenedArray = nestedArrays.flatMap { $0 }
flattenedArray // [1, 2, 3, 4, 5, 6]

let words = ["Hello world", "Swift is great"].flatMap { $0.split(separator: " ") }
words // ["Hello", "world", "Swift", "is", "great"]
let words1 = ["Hello world", "Swift is great"].map { $0.split(separator: " ") }
words1 // [["Hello", "world"], ["Swift", "is", "great"]]

let numbers2 = ["1", "2", "three", "4", "five"].flatMap { Int($0) }
numbers2 // [1, 2, 4]
let numbers3 = ["1", "2", "three", "4", "five"].map { Int($0) }
print(numbers3) // [Optional(1), Optional(2), nil, Optional(4), nil]


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










// reduce
let sum = [1, 2, 3, 4, 5].reduce(0, +)
sum // 15
let sentence = ["Swift", "is", "awesome"].reduce("") { $0 + " " + $1 }
sentence // " Swift is awesome"

let max = [10, 5, 8, 12, 3].reduce(numbers[0]) {
    if $0 > $1 {
        return $0
    } else {
        return $1
    } }
max // 12





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
let sentence1 = "How many vowels are in this sentence?"
countVowels(in: sentence1) // 11


