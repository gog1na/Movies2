//
//  MoviesViewController.swift
//  Movies2
//
//  Created by Giorgi Goginashvili on 1/17/23.
//

import UIKit

class MoviesViewController: UIViewController {
    
    var movieApiManager: MovieAPIManagerProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        fetchMovies()
    }

    func fetchMovies() {
        movieApiManager = MovieAPIManager()
        
        movieApiManager?.fetchMovies(with: .upcoming, completion: { result in
            switch result {
            case .success(let movieResponse):
                print(movieResponse.movies)
            case .failure(let error):
                print(error.localizedDescription)
            }
        })
    }

}

