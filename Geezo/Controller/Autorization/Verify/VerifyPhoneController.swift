//
//  VerifyPhoneController.swift
//  Geezo
//
//  Created by Aurocheg on 18.09.22.
//

import UIKit

class VerifyPhoneController: UIViewController {
    let verifyPhoneView = VerifyPhoneView()
    
    override func loadView() {
        view = verifyPhoneView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let backButtonItem = UIBarButtonItem()
        if let navController = navigationController {
            backButtonItem.addBackArrowButton(navigationController: navController, navigationItem: navigationItem)
        }
                
        verifyPhoneView.continueButton.addTarget(self, action: #selector(continueButtonTapped), for: .touchUpInside)
    }
    
    @objc func continueButtonTapped() {
        navigationController?.pushViewController(VerifyCodeController(), animated: true)
    }
}
