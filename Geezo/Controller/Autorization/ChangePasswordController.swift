//
//  ChangePasswordController.swift
//  Geezo
//
//  Created by Aurocheg on 18.09.22.
//

import UIKit

class ChangePasswordController: UIViewController {
    private let changePasswordView = ChangePasswordView()
    
    override func loadView() {
        view = changePasswordView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let backButtonItem = UIBarButtonItem()
        if let navController = navigationController {
            backButtonItem.addBackArrowButton(navigationController: navController, navigationItem: navigationItem)
        }
        
        changePasswordView.changePasswordButton.addTarget(self, action: #selector(onChangePasswordButtonTapped), for: .touchUpInside)
        
    }
    
    @objc func onChangePasswordButtonTapped() {
        let tabBarController = TabBarController()
        
        (UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate)?.changeRootViewController(tabBarController)
    }
}
