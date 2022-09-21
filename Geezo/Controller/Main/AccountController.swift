//
//  AccountController.swift
//  Geezo
//
//  Created by Aurocheg on 19.09.22.
//

import UIKit

class AccountController: UIViewController {
    private let accountView = AccountView()
    
    override func loadView() {
        view = accountView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
