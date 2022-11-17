//
//  DetailsViewController.swift
//  7DaysOfCode
//
//  Created by Kleiton Mendes on 17/11/22.
//

import Foundation
import UIKit

class DetailsViewController: UIViewController {
    
    private var movie: Movie
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.setBackground()
        setLayout()
    }
    
    init(movie: Movie) {
        self.movie = movie
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setLayout() {
        navigationController?.navigationBar.tintColor = UIColor.white
    }
    
}
