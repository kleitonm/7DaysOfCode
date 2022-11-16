//
//  HomeViewController.swift
//  7DaysOfCode
//
//  Created by Kleiton Mendes on 14/11/22.
//

import Foundation
import UIKit

class HomeViewController: UIViewController {
    
    
    private var requestNetworking = Network()
    private var movies: [Movie] = [] {
        didSet {
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.setBackground()
        setLayout()
        getPopularMovies()
    }
    
    private lazy var titleLabel: UILabel = {
        let titleLabel = UILabel()
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.text = "Filmes Populares"
        titleLabel.textColor = .white
        titleLabel.font = .systemFont(ofSize: 24.0, weight: .bold)
        return titleLabel
    }()
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .plain)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = .clear
        tableView.separatorStyle = .none
        return tableView
    }()
    
    private func getPopularMovies() {
        requestNetworking.fetchPopularMovies { movies in
            self.movies = movies
        }
    }
    
    func setLayout() {
//        navigationItem.backButtonTitle = "Voltar"
        view.addSubview(titleLabel)
        view.addSubview(tableView)
        
        NSLayoutConstraint.activate([
            
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            tableView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 32.0),
            tableView.leftAnchor.constraint(equalTo: view.leftAnchor),
            tableView.rightAnchor.constraint(equalTo: view.rightAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "movieCell") as? MovieTableViewCell {
            cell.selectionStyle = .none
            cell.configureCell(movie: movies[indexPath.row])
                return cell
            }
       return UITableViewCell()
//        cell.textLabel?.text = movie[indexPath.row].title
//        cell.backgroundColor = .clear
//        cell.textLabel?.textColor = .white
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    
}
