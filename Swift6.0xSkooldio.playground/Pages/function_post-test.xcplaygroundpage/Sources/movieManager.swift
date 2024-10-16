//
//  movieManager.swift
//  
//
//  Created by Siroratt Suntronsuk on 16/10/2567 BE.
//
class MovieManager {
    var movies: [Movie] = []

    // Method to search for a movie by title
    func searchMovie(byTitle title: String) -> (movie: Movie?, message: String) {
        if let foundMovie = movies.first(where: { $0.title.lowercased() == title.lowercased() }) {
            return (foundMovie, "Movie found: \(foundMovie.title)!")
        } else {
            return (nil, "Movie not found.")
        }
    }
}
