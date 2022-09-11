//
//  TextField.swift
//  Geezo
//
//  Created by Aurocheg on 11.09.22.
//

import Foundation
import UIKit

struct TextField {
    static let textFieldFont = "Montserrat Regular"
    static let textFieldSizes = (width: 295, height: 35)
    static let textFieldPlaceholderColor = UIColor(red: 0.624, green: 0.624, blue: 0.624, alpha: 1)
    static let textFieldTextColor = UIColor(red: 0.933, green: 0.933, blue: 0.933, alpha: 1)
    static let textFieldLineColor = UIColor(red: 0.933, green: 0.933, blue: 0.933, alpha: 0.2)
    static let textFieldActiveLineColor = UIColor(red: 0.933, green: 0.933, blue: 0.933, alpha: 1)
}

extension TextField {
    public static func createTextField(placeholder: String = "", image: UIImage, secureTextEntry: Bool = false) -> UITextField {
        let textField = UITextField()
        textField.frame = CGRect(x: 0, y: 0,
                                 width: textFieldSizes.width,
                                 height: textFieldSizes.height)
        textField.borderStyle = .none
        textField.textColor = textFieldTextColor
        
        if secureTextEntry {
            textField.font = UIFont(name: textFieldFont, size: 18.0)
            textField.isSecureTextEntry = true
        } else {
            textField.font = UIFont(name: textFieldFont, size: 14.0)
        }
        
        // Adding custom placeholder color
        textField.attributedPlaceholder = NSAttributedString(
            string: placeholder,
            attributes: [NSAttributedString.Key.foregroundColor: textFieldPlaceholderColor])
        
        // Adding left image to TextField
        textField.leftViewMode = .always
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 17, height: 17))
        imageView.image = image
        textField.leftView = imageView
        
        addLineTF(textField: textField)
        
        return textField
    }
    
    public static func addLineTF(textField: UITextField) {
        let bottomLine = CALayer()
        bottomLine.frame = CGRect(x: 0.0, y: textField.frame.height - 1, width: textField.frame.width, height: 2)
        bottomLine.backgroundColor = UIColor.lightGray.cgColor
        textField.borderStyle = UITextField.BorderStyle.none
        textField.layer.addSublayer(bottomLine)
    }
}
