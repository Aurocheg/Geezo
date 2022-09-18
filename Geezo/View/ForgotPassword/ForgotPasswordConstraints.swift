//
//  ForgotPasswordConstraints.swift
//  Geezo
//
//  Created by Aurocheg on 18.09.22.
//

import UIKit

final class ForgotPasswordConstraints: UIView {
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
    
    public func addConstraintsToTF(_ textField: UITextField, view: UIView, parent: UILabel) {
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        textField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40.0).isActive = true
        textField.topAnchor.constraint(equalTo: parent.bottomAnchor, constant: 90.0).isActive = true
        textField.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        textField.heightAnchor.constraint(equalToConstant: 35.0).isActive = true
    }
    
    public func addConstraintToSent(_ sentButton: UIButton, view: UIView, parent: UITextField) {
        sentButton.translatesAutoresizingMaskIntoConstraints = false
        
        sentButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40.0).isActive = true
        sentButton.topAnchor.constraint(equalTo: parent.bottomAnchor, constant: 64.0).isActive = true
        sentButton.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -80.0).isActive = true
        sentButton.heightAnchor.constraint(equalToConstant: 46.0).isActive = true
        
    }
}
