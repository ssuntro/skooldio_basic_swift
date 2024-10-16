// post-test
struct Author {
    let name: String
    let birthYear: Int?
}

struct Book {
    let title: String
    let author: Author
    let publishYear: Int
    let rating: Double?
}

// Create a sample dataset
let authors = [
    Author(name: "George Orwell", birthYear: 1903),
    Author(name: "Jane Austen", birthYear: 1775),
    Author(name: "J.K. Rowling", birthYear: 1965),
    Author(name: "Anonymous", birthYear: nil)
]

let books = [
    Book(title: "1984", author: authors[0], publishYear: 1949, rating: 4.6),
    Book(title: "Animal Farm", author: authors[0], publishYear: 1945, rating: 4.0),
    Book(title: "Pride and Prejudice", author: authors[1], publishYear: 1813, rating: 4.5),
    Book(title: "Emma", author: authors[1], publishYear: 1815, rating: 4.2),
    Book(title: "Harry Potter and the Philosopher's Stone", author: authors[2], publishYear: 1997, rating: 4.7),
    Book(title: "Harry Potter and the Chamber of Secrets", author: authors[2], publishYear: 1998, rating: 4.4),
    Book(title: "Unknown Masterpiece", author: authors[3], publishYear: 2020, rating: nil)
]

// Exercise: Perform the following operations using higher-order functions

// 1. Use `filter` to get all books published after 1950
let modernBooks = books.filter { $0.publishYear > 1950 }

// 2. Use `map` to create an array of book titles
let bookTitles = books.map { $0.title }


// 3. Use `compactMap` to get all valid ratings
let validRatings = books.compactMap { $0.rating }
books.compactMap { book in
        book.rating != nil ? book : nil
    }

// 4. Combine `filter`, `map`, and `reduce` to get the average rating of books published after 1950
let averageModernRating = books
    .filter { $0.publishYear > 1950 }
    .compactMap { $0.rating }
    .reduce(0.0, +) / Double(modernBooks.count)

// 5. Use `flatMap` and `filter` to get all authors born before 1900
let classicAuthors = books
    .flatMap { [$0.author] }
    .filter { $0.birthYear ?? 2000 < 1900 }
    .map { $0.name }

// Print results
print("Modern books:", modernBooks.map { $0.title })
print("Book titles:", bookTitles)
//print("All words in titles:", allWords)
//print("Total year span:", totalYearSpan)
print("Valid ratings:", validRatings)
print("Average rating of modern books:", averageModernRating)
print("Classic authors:", classicAuthors)
