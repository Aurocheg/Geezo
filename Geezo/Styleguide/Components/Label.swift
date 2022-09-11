//
//  Label.swift
//  Geezo
//
//  Created by Aurocheg on 10.09.22.
//

import Foundation
import UIKit

struct Label {
    
}

extension Label {
    public func createLabel(font: String, size: Double, color: UIColor, text: String) -> UILabel {
        let label = UILabel()
        label.font = UIFont(name: font, size: size)
        label.textColor = color
        label.text = text
        
        return label
    }
}
