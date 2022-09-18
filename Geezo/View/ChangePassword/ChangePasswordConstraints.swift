//
//  ChangePasswordConstraints.swift
//  Geezo
//
//  Created by Aurocheg on 18.09.22.
//

import UIKit

class ChangePasswordConstraints: UIView {
    public func addConstraintsToMainTitle(_ titleLabel: UILabel, view: UIView) {
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        titleLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 24.0).isActive = true
        titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 112.0).isActive = true
        titleLabel.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        titleLabel.heightAnchor.constraint(equalToConstant: 33.0).isActive = true
    }
    
    public func addConstraintsToText(_ textLabel: UILabel, view: UIView, parent: UILabel) {
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        
        textLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 24.0).isActive = true
        textLabel.topAnchor.constraint(equalTo: parent.bottomAnchor, constant: 28.0).isActive = true
        textLabel.widthAnchor.constraint(equalToConstant: 250.0).isActive = true
        textLabel.heightAnchor.constraint(equalToConstant: 72.0).isActive = true
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
    
    public func addConstraintsToChangePassword(_ changePasswordButton: UIButton, view: UIView, parent: UITextField) {
        changePasswordButton.translatesAutoresizingMaskIntoConstraints = false
        
        changePasswordButton.topAnchor.constraint(equalTo: parent.bottomAnchor, constant: 64.0).isActive = true
        changePasswordButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40.0).isActive = true
        changePasswordButton.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -80.0).isActive = true
        changePasswordButton.heightAnchor.constraint(equalToConstant: 46.0).isActive = true
    }
}
