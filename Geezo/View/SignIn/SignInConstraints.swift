//
//  SignInConstraints.swift
//  Geezo
//
//  Created by Aurocheg on 16.09.22.
//

import Foundation
import UIKit

final class SignInConstraints: UIView {
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
    
    public func addConstraintsToForgotPassword(_ forgotPasswordButton: UIButton, view: UIView, parent: UITextField) {
        forgotPasswordButton.translatesAutoresizingMaskIntoConstraints = false
        
        forgotPasswordButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -40.0).isActive = true
        forgotPasswordButton.topAnchor.constraint(equalTo: parent.bottomAnchor, constant: 36.0).isActive = true
        forgotPasswordButton.widthAnchor.constraint(equalToConstant: 130.0).isActive = true
        forgotPasswordButton.heightAnchor.constraint(equalToConstant: 22.0).isActive = true
    }
    
    public func addConstraintsToSignIn(_ signInButton: UIButton, view: UIView, parent: UIButton) {
        signInButton.translatesAutoresizingMaskIntoConstraints = false
        
        signInButton.topAnchor.constraint(equalTo: parent.bottomAnchor, constant: 64.0).isActive = true
        signInButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40.0).isActive = true
        signInButton.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -80.0).isActive = true
        signInButton.heightAnchor.constraint(equalToConstant: 46.0).isActive = true
    }
    
    public func addConstraintsToConnectWith(_ connectWithLabel: UILabel, view: UIView, parent: UIButton) {
        connectWithLabel.translatesAutoresizingMaskIntoConstraints = false
        
        connectWithLabel.topAnchor.constraint(equalTo: parent.bottomAnchor, constant: 134.0).isActive = true
        connectWithLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40.0).isActive = true
        connectWithLabel.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -80.0).isActive = true
        connectWithLabel.heightAnchor.constraint(equalToConstant: 13.0).isActive = true
    }
    
    public func addConstraintsToSocialButtons(_ socialButtonsView: UIView, view: UIView, parent: UILabel) {
        socialButtonsView.translatesAutoresizingMaskIntoConstraints = false
        
        socialButtonsView.topAnchor.constraint(equalTo: parent.bottomAnchor, constant: 20.0).isActive = true
        socialButtonsView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        socialButtonsView.widthAnchor.constraint(equalToConstant: 144.0).isActive = true
        socialButtonsView.heightAnchor.constraint(equalToConstant: 40.0).isActive = true
    }
    
    public func addConstraintsToSignUp(_ signUpView: UIView, view: UIView, parent: UIView, signUpLabel: UILabel, signUpButton: UIButton) {
        signUpView.translatesAutoresizingMaskIntoConstraints = false
        signUpLabel.translatesAutoresizingMaskIntoConstraints = false
        signUpButton.translatesAutoresizingMaskIntoConstraints = false
        
        // MARK: - Adding Constraints to Sign Up View
        signUpView.topAnchor.constraint(equalTo: parent.bottomAnchor, constant: 60.0).isActive = true
        signUpView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        signUpView.widthAnchor.constraint(equalToConstant: 199.0).isActive = true
        signUpView.heightAnchor.constraint(equalToConstant: 22.0).isActive = true
        
        // MARK: - Adding Constraints to Label
        signUpLabel.leftAnchor.constraint(equalTo: signUpView.leftAnchor).isActive = true
        signUpLabel.topAnchor.constraint(equalTo: signUpView.topAnchor).isActive = true
        signUpLabel.widthAnchor.constraint(equalToConstant: 144.0).isActive = true
        signUpLabel.heightAnchor.constraint(equalToConstant: 18.0).isActive = true
        
        // MARK: - Adding Constraints to Button
        signUpButton.leftAnchor.constraint(equalTo: signUpLabel.rightAnchor, constant: 6.0).isActive = true
        signUpButton.topAnchor.constraint(equalTo: signUpView.topAnchor, constant: -2.0).isActive = true
        signUpButton.widthAnchor.constraint(equalToConstant: 49.0).isActive = true
        signUpButton.heightAnchor.constraint(equalToConstant: 22.0).isActive = true
        
    }
}
