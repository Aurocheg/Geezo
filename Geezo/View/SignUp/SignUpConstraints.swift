//
//  SignUpConstraints.swift
//  Geezo
//
//  Created by Aurocheg on 18.09.22.
//

import UIKit

final class SignUpConstraints: UIView {
    public func addConstraintsToMainTitle(_ title: UILabel, view: UIView) {
        title.translatesAutoresizingMaskIntoConstraints = false
        title.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40.0).isActive = true
        title.topAnchor.constraint(equalTo: view.topAnchor, constant: 105.0).isActive = true
        title.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        title.heightAnchor.constraint(equalToConstant: 42.0).isActive = true
    }
    
    public func addConstraintsToTF(arrayTF: Array<UITextField>, view: UIView, parent: UILabel) {
        for (i, textField) in arrayTF.enumerated() {
            textField.translatesAutoresizingMaskIntoConstraints = false
            
            textField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40.0).isActive = true
            
            if i == 0 {
                textField.topAnchor.constraint(equalTo: parent.bottomAnchor, constant: 68.0).isActive = true
            } else {
                textField.topAnchor.constraint(equalTo: arrayTF[i - 1].bottomAnchor, constant: 36.0).isActive = true
            }
            
            textField.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
            textField.heightAnchor.constraint(equalToConstant: 35).isActive = true
        }
    }
    
    public func addConstraintsToSignUp(_ signUpButton: UIButton, view: UIView, parent: UITextField) {
        signUpButton.translatesAutoresizingMaskIntoConstraints = false
        
        signUpButton.topAnchor.constraint(equalTo: parent.bottomAnchor, constant: 64.0).isActive = true
        signUpButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40.0).isActive = true
        signUpButton.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -80.0).isActive = true
        signUpButton.heightAnchor.constraint(equalToConstant: 46.0).isActive = true
    }
}
