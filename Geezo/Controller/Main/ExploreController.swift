//
//  ExploreController.swift
//  Geezo
//
//  Created by Aurocheg on 19.09.22.
//

import UIKit

class ExploreController: UIViewController {
    let exploreView = ExploreView()
    
    override func loadView() {
        view = exploreView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
