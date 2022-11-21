//
//  MovieViewModel.swift
//  7DaysOfCode
//
//  Created by Kleiton Mendes on 17/11/22.
//

import Foundation

class MovieViewModel: MovieNetworkApiProtocol {
    
    private var moviesModel = [Movie]()
    private let movieNetworkApi : Network? = nil
    
    func success(movies: [MovieResults]) {
        self.moviesModel = movies[0].results
    }
    
    func error(error: Error) {
        print("Erro ao carregar os filmes")
    }
    
    
   
}
