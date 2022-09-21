//
//  RadioController.swift
//  Geezo
//
//  Created by Aurocheg on 19.09.22.
//

import UIKit

class RadioController: UIViewController {
    private let radioView = RadioView()
    
    override func loadView() {
        view = radioView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
