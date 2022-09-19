//
//  VerifyDoneController.swift
//  Geezo
//
//  Created by Aurocheg on 18.09.22.
//

import UIKit

class VerifyDoneController: UIViewController {
    private let verifyDoneView = VerifyDoneView()

    override func loadView() {
        view = verifyDoneView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let backButtonItem = UIBarButtonItem()
        if let navController = navigationController {
            backButtonItem.addBackArrowButton(navigationController: navController, navigationItem: navigationItem)
        }
    }
}
