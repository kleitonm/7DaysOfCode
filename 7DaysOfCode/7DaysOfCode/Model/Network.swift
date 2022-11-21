//
//  Network.swift
//  7DaysOfCode
//
//  Created by Kleiton Mendes on 16/11/22.
//

import Foundation

protocol MovieNetworkApiProtocol {
    func success(movies : [MovieResults])
    func error(error : Error)
}

import Foundation

class Network {
    
    static let shared = Network()

    func fetchPopularMovies(_ completion: @escaping ([Movie]) -> ()) {
        guard let url = URL(string: "https://api.themoviedb.org/3/movie/popular?api_key=\(MOVIE_API_KEY)&language=pt-BR&page=1") else { return }
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else {
                return
            }
            do {
                let result = try JSONDecoder().decode(MovieResults.self, from: data)
                completion(result.results)
            } catch {
                print("Não foi possível decodificar o JSON")
            }
        }
        task.resume()
    }
}
    
