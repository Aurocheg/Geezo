//
//  SignInViewController.swift
//  Geezo
//
//  Created by Aurocheg on 11.09.22.
//

import UIKit

final class SignInController: UIViewController {
    private let signInView = SignInView()
    
    override func loadView() {
        view = signInView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MARK: - Navigation
        signInView.forgotPasswordButton.addTarget(self, action: #selector(forgotTapped), for: .touchUpInside)
        signInView.signInButton.addTarget(self, action: #selector(signInTapped), for: .touchUpInside)
        signInView.signUpButton.addTarget(self, action: #selector(signUpTapped), for: .touchUpInside)
    }
    
    // MARK: - Buttons Taps
    @objc func forgotTapped() {
        navigationController?.pushViewController(ForgotPasswordController(), animated: true)
    }
    
    @objc func signInTapped() {
        navigationController?.pushViewController(VerifyPhoneController(), animated: true)
    }
    
    @objc func signUpTapped() {
        navigationController?.pushViewController(SignUpController(), animated: true)
    }
}
