//
//  SignInViewController.swift
//  Geezo
//
//  Created by Aurocheg on 7.09.22.
//

import UIKit

class SignInViewController: UIViewController {
    // MARK: UI Elements Init
    var mainTitleLabel = UILabel()
    
    // MARK: Components Init
    let label = Label()
    let colorStyle = ColorStyle()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainTitleLabel = label.createLabel(font: "Roboto", size: 36.0, color: .white)
        mainTitleLabel.frame = CGRect(x: 0, y: 0, width: 300, height: 100)
        view.addSubview(mainTitleLabel)
    }
}
