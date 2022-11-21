//
//  NSAttributedString+Extensions.swift
//  7DaysOfCode
//
//  Created by Kleiton Mendes on 21/11/22.
//

import Foundation
import UIKit

extension NSAttributedString {
    func withLineSpacing(_ spacing: CGFloat) -> NSAttributedString {
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = spacing
        let attribString = NSMutableAttributedString(string: string)
        attribString.addAttribute(.paragraphStyle, value: paragraphStyle, range: NSRange(location: 0, length: string.count))
        return NSAttributedString(attributedString: attribString)
    }
}
