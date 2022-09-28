//
//  UILabel.swift
//  Geezo
//
//  Created by Aurocheg on 18.09.22.
//

import Foundation
import UIKit

extension UILabel {
    func createLabel(font: String, size: Double, color: UIColor, text: String) -> UILabel {
        let label = UILabel()
        label.font = UIFont(name: font, size: size)
        label.textColor = color
        label.text = text
        
        return label
    }
    
    func drawLineOnBothSides(labelWidth: CGFloat, color: UIColor) {
        let lineHeight = CGFloat(1)
        
        let leftLine = UIView(frame: CGRect(x: 0, y: self.frame.height / 2 - lineHeight / 2 + 6, width: 120.0, height: lineHeight))
        leftLine.backgroundColor = color
        addSubview(leftLine)
        
        let rightLine = UIView(frame: CGRect(x: 230, y: self.frame.height / 2 - lineHeight / 2 + 6, width: 120.0, height: lineHeight))
        rightLine.backgroundColor = color
        addSubview(rightLine)
    }
}
