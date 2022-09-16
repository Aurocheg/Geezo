//
//  SignInConstraints.swift
//  Geezo
//
//  Created by Aurocheg on 16.09.22.
//

import Foundation
import UIKit

final class SignInConstraints: UIView {
    public func addConstraintToTitleLabel(title: UILabel, parent: AnyObject) {
        title.translatesAutoresizingMaskIntoConstraints = false
        let labelVFL = ["mainTitleLabel": title]
        let metrics = ["height": 42, "width": parent.bounds.size.width - 80, "top": 130]
        
        parent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-top-[mainTitleLabel(height)]",
                                                           options: [],
                                                           metrics: metrics,
                                                           views: labelVFL))
        parent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-40-[mainTitleLabel(width)]|",
                                                           options: [],
                                                           metrics: metrics,
                                                           views: labelVFL))
    }
    
    public func addConstraintsToTF(emailTF: UITextField, passwordTF: UITextField, title: UILabel, parent: AnyObject) {
        emailTF.translatesAutoresizingMaskIntoConstraints = false
        passwordTF.translatesAutoresizingMaskIntoConstraints = false

        let VFL = ["emailTF": emailTF, "passwordTF": passwordTF, "mainTitleLabel": title]
        let metrics = ["top": 68]

        parent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:[mainTitleLabel]-top-[emailTF]",
                                                           options: [],
                                                           metrics: metrics,
                                                           views: VFL))
        parent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-40-[emailTF]",
                                                           options: [],
                                                           metrics: metrics,
                                                           views: VFL))

        parent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:[emailTF]-50-[passwordTF]",
                                                           options: [],
                                                           metrics: metrics,
                                                           views: VFL))

        parent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-40-[passwordTF]",
                                                           options: [],
                                                           metrics: metrics,
                                                           views: VFL))
    }
    
    public func addConstraintsToForgotPasswordButton(button: UIButton, passwordTF: UITextField, parent: AnyObject) {
        button.translatesAutoresizingMaskIntoConstraints = false
        
        let VFL = ["forgotPasswordButton": button, "passwordTF": passwordTF]
        let metrics = ["top": 35]
        
        parent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:[passwordTF]-top-[forgotPasswordButton]",
                                                      options: [],
                                                      metrics: metrics,
                                                      views: VFL))
        parent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:[forgotPasswordButton]-40-|",
                                                      options: [],
                                                      metrics: metrics,
                                                      views: VFL))
    }
    
    public func addConstraintsToSignInButton(signInButton: UIButton, forgotPasswordButton: UIButton, parent: AnyObject) {
        signInButton.translatesAutoresizingMaskIntoConstraints = false
        
        let VFL = ["signInButton": signInButton, "forgotPasswordButton": forgotPasswordButton]
        let metrics = ["top": 65, "width": Int(UIScreen.main.bounds.width - 80), "height": 45]
        
        parent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:[forgotPasswordButton]-top-[signInButton(height)]",
                                                      options: [],
                                                      metrics: metrics,
                                                      views: VFL))
        parent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-40-[signInButton(width)]",
                                                      options: [],
                                                      metrics: metrics,
                                                      views: VFL))
    }
    
    public func addConstraintsToConnectWithLabel(label: UILabel, signInButton: UIButton, parent: AnyObject) {
        label.translatesAutoresizingMaskIntoConstraints = false
        
        let VFL = ["connectWithLabel": label, "signInButton": signInButton]
        let metrics = ["top": 135, "width": Int(UIScreen.main.bounds.width - 80), "height": 13]
        
        parent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:[signInButton]-top-[connectWithLabel(height)]",
                                                      options: [],
                                                      metrics: metrics,
                                                      views: VFL))
        parent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-40-[connectWithLabel(width)]",
                                                      options: [],
                                                      metrics: metrics,
                                                      views: VFL))
    }
}
