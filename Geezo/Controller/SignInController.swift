//
//  SignInViewController.swift
//  Geezo
//
//  Created by Aurocheg on 11.09.22.
//

import UIKit

class SignInController: UIViewController {
    private let signInView = SignInView()
    
    override func loadView() {
        view = signInView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        signInView.forgotPasswordButton.addTarget(self, action: #selector(forgotTapped), for: .touchUpInside)
        signInView.signInButton.addTarget(self, action: #selector(signInTapped), for: .touchUpInside)
        signInView.signUpButton.addTarget(self, action: #selector(signUpTapped), for: .touchUpInside)
    }
    
    @objc func forgotTapped() {
        print("forgot tapped")
    }
    
    @objc func signInTapped() {
        print("sign in tapped")
    }
    
    @objc func signUpTapped() {
        print("sign up tapped")
    }
}
