//
//  CommonConstraints.swift
//  Geezo
//
//  Created by Aurocheg on 19.09.22.
//

import UIKit

class CommonConstraints: UIView {
    public func addConstraintsToMainTitle(_ mainTitleLabel: UILabel, view: UIView, leftConstant: CGFloat = 40.0, topConstant: CGFloat = 105.0, widthConstant: CGFloat, heightConstant: CGFloat) {
        mainTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        mainTitleLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: leftConstant).isActive = true
        mainTitleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: topConstant).isActive = true
        mainTitleLabel.widthAnchor.constraint(equalToConstant: widthConstant).isActive = true
        mainTitleLabel.heightAnchor.constraint(equalToConstant: heightConstant).isActive = true
    }
    
    public func addConstraintsToTF(arrayTF: Array<UITextField> = [], textField: UITextField? = nil, view: UIView, parent: AnyObject) {
        if arrayTF == [] {
            if let TF = textField {
                TF.translatesAutoresizingMaskIntoConstraints = false
                
                TF.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40.0).isActive = true
                TF.topAnchor.constraint(equalTo: parent.bottomAnchor, constant: 94.0).isActive = true
                TF.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -80.0).isActive = true
                TF.heightAnchor.constraint(equalToConstant: 35.0).isActive = true
            }
        } else {
            for (i, TF) in arrayTF.enumerated() {
                TF.translatesAutoresizingMaskIntoConstraints = false
                
                TF.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40.0).isActive = true
                
                if i == 0 {
                    TF.topAnchor.constraint(equalTo: parent.bottomAnchor, constant: 68.0).isActive = true
                } else {
                    TF.topAnchor.constraint(equalTo: arrayTF[i - 1].bottomAnchor, constant: 36.0).isActive = true
                }
                
                TF.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
                TF.heightAnchor.constraint(equalToConstant: 35).isActive = true
            }
        }
    }
    
    public func addConstraintsToButton(_ button: UIButton, view: UIView, parent: AnyObject, centered: Bool = false, topConstant: CGFloat? = nil, widthConstant: CGFloat? = nil, heightConstant: CGFloat? = nil) {
        button.translatesAutoresizingMaskIntoConstraints = false
        
        // MARK: - Left Anchor
        if centered {
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        } else {
            button.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40.0).isActive = true
        }
        
        // MARK: - Top Anchor
        if let constant = topConstant {
            button.topAnchor.constraint(equalTo: parent.bottomAnchor, constant: constant).isActive = true
        } else {
            button.topAnchor.constraint(equalTo: parent.bottomAnchor, constant: 64.0).isActive = true
        }
        
        // MARK: - Width Anchor
        if let constant = widthConstant {
            button.widthAnchor.constraint(equalToConstant: constant).isActive = true
        } else {
            button.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -80.0).isActive = true
        }
        
        // MARK: - Height Anchor
        if let constant = heightConstant {
            button.heightAnchor.constraint(equalToConstant: constant).isActive = true
        } else {
            button.heightAnchor.constraint(equalToConstant: 46.0).isActive = true
        }
        
    }
    
    public func addConstraintsToText(_ textLabel: UILabel, view: UIView, parent: AnyObject, leftConstant: CGFloat? = nil, topConstant: CGFloat, widthConstant: CGFloat, heightConstant: CGFloat) {
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        
        if let constant = leftConstant {
            textLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: constant).isActive = true
        } else {
            textLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        }
        
        textLabel.topAnchor.constraint(equalTo: parent.bottomAnchor, constant: topConstant).isActive = true
        textLabel.widthAnchor.constraint(equalToConstant: widthConstant).isActive = true
        textLabel.heightAnchor.constraint(equalToConstant: heightConstant).isActive = true
    }
}
