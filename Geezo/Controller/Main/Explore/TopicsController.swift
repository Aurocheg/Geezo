//
//  TopicsController.swift
//  Geezo
//
//  Created by Aurocheg on 4.10.22.
//

import UIKit

final class TopicsController: UIViewController {
    let topicsView = TopicsView()
    
    override func loadView() {
        view = topicsView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let backButtonItem = UIBarButtonItem()
        if let navController = navigationController {
            backButtonItem.addBackArrowButton(navigationController: navController, navigationItem: navigationItem)
        }
    }
}
