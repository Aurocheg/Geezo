//
//  TextField.swift
//  Geezo
//
//  Created by Aurocheg on 11.09.22.
//

import Foundation
import UIKit

enum TextFieldType {
    case email
    case password
    case name
    case phone
}

struct TextField {
    public let textFieldFont = "Montserrat-Regular"
    public let textFieldSizes = (width: Int(UIScreen.main.bounds.width - 80), height: 35)
    public let textFieldPlaceholderColor = UIColor(red: 0.624, green: 0.624, blue: 0.624, alpha: 1)
    public let textFieldTextColor = UIColor(red: 0.933, green: 0.933, blue: 0.933, alpha: 1)
    public let textFieldLineColor = UIColor(red: 0.933, green: 0.933, blue: 0.933, alpha: 0.2)
    public let textFieldActiveLineColor = UIColor(red: 0.933, green: 0.933, blue: 0.933, alpha: 1)
}

// MARK: TextField Component Extension
extension TextField {
    public func createTF(placeholder: String = "", type: TextFieldType) -> UITextField {
        let textField = textFieldInit()
        
        textField.font = UIFont(name: textFieldFont, size: 14.0)
        
        switch type {
        case .email:
            if let image = UIImage(named: "emailIcon") {
                addLeftViewMode(textField: textField, image: image)
            }
        case .password:
            if let image = UIImage(named: "passwordIcon") {
                addLeftViewMode(textField: textField, image: image)
            }
            textField.isSecureTextEntry = true
        case .name:
            if let image = UIImage(named: "nameIcon") {
                addLeftViewMode(textField: textField, image: image)
            }
        case .phone:
            if let image = UIImage(named: "phoneIcon") {
                addLeftViewMode(textField: textField, image: image)
            }
        }
        
        // MARK: Adding custom placeholder color
        textField.attributedPlaceholder = NSAttributedString(
            string: placeholder,
            attributes: [NSAttributedString.Key.foregroundColor: textFieldPlaceholderColor])
                
        // MARK: Adding Line to TextField
        addLineTF(textField: textField)
        
        return textField
    }
    
    private func textFieldInit() -> UITextField {
        let textField = UITextField()
        textField.frame = CGRect(x: 0, y: 0,
                                 width: textFieldSizes.width,
                                 height: textFieldSizes.height)
        textField.borderStyle = .none
        textField.textColor = textFieldTextColor
        
        return textField
    }
    
    private func addLeftViewMode(textField: UITextField, image: UIImage) {
        textField.leftViewMode = .always
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 17, height: 17))
        imageView.image = image
        textField.leftView = imageView
    }
    
    private func addLineTF(textField: UITextField) {
        let bottomLine = CALayer()
        bottomLine.frame = CGRect(x: 0.0, y: textField.frame.height - 1, width: textField.frame.width, height: 2)
        bottomLine.backgroundColor = UIColor.lightGray.cgColor
        textField.borderStyle = UITextField.BorderStyle.none
        textField.layer.addSublayer(bottomLine)
    }
}
