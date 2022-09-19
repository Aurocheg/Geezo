//
//  SignUpController.swift
//  Geezo
//
//  Created by Aurocheg on 18.09.22.
//

import UIKit

final class SignUpController: UIViewController {
    override func loadView() {
        view = SignUpView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let backButtonItem = UIBarButtonItem()
        if let navController = navigationController {
            backButtonItem.addBackArrowButton(navigationController: navController, navigationItem: navigationItem)
        }
    }
}
