//
//  String+.swift
//  7DaysOfCode
//
//  Created by Kleiton Mendes on 16/11/22.
//

import UIKit

extension String {
    func formatDate() -> Self {
        let inputFormatter = DateFormatter()
        inputFormatter.dateFormat = "yyyy-MM-dd"
        let showDate = inputFormatter.date(from: self)
        guard let showDate = showDate else {
            return "Não foi possível obter a data"
        }
        inputFormatter.dateFormat = "dd/MM/yy"
        return inputFormatter.string(from: showDate)
    }
}
