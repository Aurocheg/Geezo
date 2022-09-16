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
        
        // MARK: Adding custom placeholder color
        textField.attributedPlaceholder = NSAttributedString(
            string: placeholder,
            attributes: [NSAttributedString.Key.foregroundColor: textFieldPlaceholderColor])
        textField.font = UIFont(name: textFieldFont, size: 14.0)
        
        switch type {
        case .email:
            if let icon = UIImage(named: "emailIcon") {
                textField.setTextIconAndPlaceholder(icon: icon, placeholder: placeholder)
            }
        case .password:
            if let icon = UIImage(named: "passwordIcon") {
                textField.setTextIconAndPlaceholder(icon: icon, placeholder: placeholder)
            }
            textField.isSecureTextEntry = true
            
        case .name:
            if let icon = UIImage(named: "nameIcon") {
                textField.setTextIconAndPlaceholder(icon: icon, placeholder: placeholder)
            }
        case .phone:
            if let icon = UIImage(named: "phoneIcon") {
                textField.setTextIconAndPlaceholder(icon: icon, placeholder: placeholder)
            }
        }
                
        // MARK: Adding Line to TextField
        textField.addUnderLine()
        
        return textField
    }
    
    // MARK: Aditional Methods
    private func textFieldInit() -> UITextField {
        let textField = UITextField()
        textField.frame = CGRect(x: 0, y: 0,
                                 width: textFieldSizes.width,
                                 height: textFieldSizes.height)
        textField.borderStyle = .none
        textField.textColor = textFieldTextColor
        
        return textField
    }
}

extension UITextField {
    func setTextIconAndPlaceholder(icon: UIImage, placeholder: String) {
        let imageView = UIImageView()
        imageView.image = icon
        imageView.frame = CGRect(x: 0, y: 0, width: 17, height: 17)
        
        let view = UIView()
        view.frame = CGRect(x: 0, y: 0, width: 40, height: 15)
        view.backgroundColor = .clear
        view.addSubview(imageView)
        
        self.leftView = view
        self.leftViewMode = .always
        self.placeholder = placeholder
    }
    
    func addUnderLine() {
        let bottomLine = CALayer()
        bottomLine.frame = CGRect(x: 0.0, y: self.frame.height - 1, width: self.frame.width, height: 2)
        bottomLine.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.2).cgColor
        self.borderStyle = UITextField.BorderStyle.none
        self.layer.addSublayer(bottomLine)
    }
}
