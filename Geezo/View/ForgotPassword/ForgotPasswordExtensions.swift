//
//  ForgotPasswordExtensions.swift
//  Geezo
//
//  Created by Aurocheg on 18.09.22.
//

import Foundation
import UIKit

extension NSAttributedString {
    func withLineSpacing(_ spacing: CGFloat) -> NSAttributedString {
        let attributedString = NSMutableAttributedString(attributedString: self)
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineBreakMode = .byTruncatingTail
        paragraphStyle.lineSpacing = spacing
        attributedString.addAttribute(.paragraphStyle, value: paragraphStyle, range: NSRange(location: 0, length: string.count))
        return NSAttributedString(attributedString: attributedString)
    }
}
