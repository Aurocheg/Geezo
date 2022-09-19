//
//  ForgotPasswordController.swift
//  Geezo
//
//  Created by Aurocheg on 18.09.22.
//

import UIKit

final class ForgotPasswordController: UIViewController {
    private let forgotPasswordView = ForgotPasswordView()
    
    override func loadView() {
        view = forgotPasswordView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let backButtonItem = UIBarButtonItem()
        if let navController = navigationController {
            backButtonItem.addBackArrowButton(navigationController: navController, navigationItem: navigationItem)
        }
        
        forgotPasswordView.sentButton.addTarget(self, action: #selector(sentButtonTapped), for: .touchUpInside)
    }
    
    @objc func sentButtonTapped() {
        self.navigationController?.pushViewController(ChangePasswordController(), animated: true)
    }
}
