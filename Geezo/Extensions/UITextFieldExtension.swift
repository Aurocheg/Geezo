//
//  UITextFieldExtension.swift
//  Geezo
//
//  Created by Aurocheg on 28.09.22.
//

import Foundation
import UIKit

// MARK: - Text Field Settings
let textFieldFont = "Montserrat-Regular"
let textFieldSizes = (width: Int(UIScreen.main.bounds.width - 80), height: 35)
let textFieldPlaceholderColor = UIColor(red: 0.624, green: 0.624, blue: 0.624, alpha: 1)
let textFieldTextColor = UIColor(red: 0.933, green: 0.933, blue: 0.933, alpha: 1)
let textFieldLineColor = UIColor(red: 0.933, green: 0.933, blue: 0.933, alpha: 0.2)
let textFieldActiveLineColor = UIColor(red: 0.933, green: 0.933, blue: 0.933, alpha: 1)

// MARK: - TextField Enum
enum UITextFieldType {
    case email
    case password
    case name
    case phone
}

extension UITextField {
    func createTF(placeholder: String = "", type: UITextFieldType) -> UITextField {
        let textField = textFieldInit()
        
        // MARK: - Adding custom placeholder color
        textField.attributedPlaceholder = NSAttributedString(
            string: placeholder,
            attributes: [NSAttributedString.Key.foregroundColor: textFieldPlaceholderColor])
        textField.font = UIFont(name: textFieldFont, size: 14.0)
        textField.autocorrectionType = .no
        textField.autocapitalizationType = .none
        
        // MARK: - TextField Type
        switch type {
        case .email:
            if let icon = UIImage(named: "emailIcon") {
                textField.setTextFieldIcon(icon: icon)
            }
            
            textField.textContentType = .emailAddress
            textField.keyboardType = .emailAddress
        case .password:
            if let icon = UIImage(named: "passwordIcon") {
                textField.setTextFieldIcon(icon: icon)
            }
            
            textField.textContentType = .password
            textField.isSecureTextEntry = true
            
            if let icon = UIImage(named: "showPasswordIcon") {
                textField.setShowPasswordButton(icon: icon)
            }
        case .name:
            if let icon = UIImage(named: "nameIcon") {
                textField.setTextFieldIcon(icon: icon)
            }
            
            textField.textContentType = .name
        case .phone:
            if let icon = UIImage(named: "phoneIcon") {
                textField.setTextFieldIcon(icon: icon)
            }
            
            textField.textContentType = .telephoneNumber
            textField.keyboardType = .phonePad
        }
                
        // MARK: Adding Line to TextField
        textField.setUnderLine(color: UIColor(red: 1, green: 1, blue: 1, alpha: 0.2))
        
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
    
    func setTextFieldIcon(icon: UIImage) {
        let imageView = UIImageView()
        imageView.image = icon
        imageView.frame = CGRect(x: 0, y: 0, width: 17, height: 17)
        
        let view = UIView()
        view.frame = CGRect(x: 0, y: 0, width: 40, height: 17)
        view.backgroundColor = .clear
        view.addSubview(imageView)
        
        leftView = view
        leftViewMode = .always
    }
    
    func setShowPasswordButton(icon: UIImage) {
        let button = UIButton()
        
        button.setImage(icon, for: .normal)
        addSubview(button)
        button.frame = CGRect(x: self.frame.width - 20, y: 0, width: 17, height: 17)
    }
    
    func setUnderLine(color: UIColor) {
        let bottomLine = CALayer()
        bottomLine.frame = CGRect(x: 0.0, y: self.frame.height - 1, width: self.frame.width, height: 2)
        bottomLine.backgroundColor = color.cgColor
        self.borderStyle = UITextField.BorderStyle.none
        self.layer.addSublayer(bottomLine)
    }
}
