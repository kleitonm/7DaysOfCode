//
//  MovieList.swift
//  7DaysOfCode
//
//  Created by Kleiton Mendes on 16/11/22.
//

import Foundation

struct Movie {
    let id: Int
    let title: String
    let releaseDate: String
    let image: String?
    let overview: String
    let voteAverage: Double
    
//    private enum CodingKeys: String, CodingKey {
//         case id
//         case title
//         case releaseDate = "release_date"
//         case image = "poster_path"
//         case overview
//         case voteAverage = "vote_average"
//    }
    
}

let movies: [Movie] = [
    Movie(id: 1, title: "Órfã 2: A Origem", releaseDate: "2022", image: nil, overview: "", voteAverage: 7.2),
    Movie(id: 2, title: "Minions 2: A Origem de Gru", releaseDate: "2022", image: nil, overview: "", voteAverage: 7.8),
    Movie(id: 3, title: "Thor: Amor e Trovão", releaseDate: "2022", image: nil, overview: "", voteAverage: 6.8),
    Movie(id: 4, title: "Avatar", releaseDate: "2009", image: nil, overview: "", voteAverage: 8.8),
]
