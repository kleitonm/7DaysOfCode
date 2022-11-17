//
//  Network.swift
//  7DaysOfCode
//
//  Created by Kleiton Mendes on 16/11/22.
//

import Foundation
import UIKit

class Network {
    private func getAPIKey() -> String? {
        var keys: NSDictionary?
        if let path = Bundle.main.path(forResource: "Keys", ofType: "plist") {
            keys = NSDictionary(contentsOfFile: path)
            return keys?["apiKey"] as? String
        }
        return nil
    }
    
    private func getURLPopularMovies() -> String {
        guard let APIKey = getAPIKey() else { return String() }
        return "https://api.themoviedb.org/3/movie/popular?api_key=\(APIKey)&language=pt-BR&page=1"
//        return "https://api.themoviedb.org/3/movie/550?api_key=8b7fa20ce02f3e24d0fe10d420d781bc"
    }
    
    func fetchPopularMovies(_ completion: @escaping ([Movie]) -> ()) {
        let url = URL(string: getURLPopularMovies())!
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
