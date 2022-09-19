//
//  VerifyCodeController.swift
//  Geezo
//
//  Created by Aurocheg on 18.09.22.
//

import UIKit

class VerifyCodeController: UIViewController {
    private let verifyCodeView = VerifyCodeView()
    
    override func loadView() {
        view = verifyCodeView
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        let backButtonItem = UIBarButtonItem()
        if let navController = navigationController {
            backButtonItem.addBackArrowButton(navigationController: navController, navigationItem: navigationItem)
        }
        
        verifyCodeView.continueButton.addTarget(self, action: #selector(continueButtonTapped), for: .touchUpInside)
    }
    
    @objc func continueButtonTapped() {
        navigationController?.pushViewController(VerifyDoneController(), animated: true)
    }
}
