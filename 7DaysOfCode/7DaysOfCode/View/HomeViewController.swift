//
//  HomeViewController.swift
//  7DaysOfCode
//
//  Created by Kleiton Mendes on 14/11/22.
//

import Foundation
import UIKit

class HomeViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.setBackground()
        setLayout()
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
    
    func setLayout() {
        view.addSubview(titleLabel)
        view.addSubview(tableView)
        
        
    }
    
}
