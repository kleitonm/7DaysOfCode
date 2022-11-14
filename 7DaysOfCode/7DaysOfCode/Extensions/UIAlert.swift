//
//  UIAlert.swift
//  7DaysOfCode
//
//  Created by Kleiton Mendes on 14/11/22.
//

import UIKit

extension UIViewController {
    
    // MARK: Alerts
    func dispatchAlert(_ title: String?, message: String, handler: @escaping() -> Void = {}) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        let dismissAction = UIAlertAction(title: "Fechar", style: .default, handler: { (action) -> Void in
            handler()
        })
        
        alert.addAction(dismissAction)
        self.present(alert, animated: true, completion: nil)
    }
}
