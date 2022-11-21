//
//  UIImageView.swift
//  7DaysOfCode
//
//  Created by Kleiton Mendes on 17/11/22.
//

import Foundation
import UIKit
import Kingfisher

extension UIImageView {
    func configureImage(_ imageURL: String) {
        let url = URL(string: "https://image.tmdb.org/t/p/w500\(imageURL)")
        self.kf.setImage(with: url)
    }
}
