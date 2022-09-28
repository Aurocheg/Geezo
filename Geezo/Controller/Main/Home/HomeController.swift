//
//  HomeController.swift
//  Geezo
//
//  Created by Aurocheg on 19.09.22.
//

import UIKit

final class HomeController: UIViewController {
    private let homeView = HomeView()
    
    override func loadView() {
        view = homeView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
