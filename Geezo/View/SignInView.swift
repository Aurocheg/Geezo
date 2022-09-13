//
//  SignInView.swift
//  Geezo
//
//  Created by Aurocheg on 11.09.22.
//

import UIKit

final class SignInView: UIView {
    // MARK: UI Elements
    private var mainTitleLabel = UILabel()
    private var emailTF = UITextField()
    private var passwordTF = UITextField()
    private var forgotPasswordButton = UIButton()
    private var signInButton = UIButton()
    private var connectWithLabel = UILabel()
    private var socialButtons = [UIButton]()
    private var signUpLabel = UILabel()
    private var signUpButton = UIButton()
    
    // MARK: Components Init
    private var button = Button()
    private var label = Label()
    private var textField = TextField()
    
    // MARK: Init Method
    init() {
        super.init(frame: .zero)
        
        if let image = UIImage(named: "signInBackground") {
            self.backgroundColor = UIColor(patternImage: image)
        }
                
        createMainTitleLabel()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: UI Methods
    private func createMainTitleLabel() {
        mainTitleLabel = label.createLabel(font: "Roboto-Bold", size: 36.0, color: .white, text: "SIGN IN")
        addSubview(mainTitleLabel)

        addConstraintToTitleLabel()
    }
    
    // MARK: Constraints
    private func addConstraintToTitleLabel() {
        mainTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        let labelVFL = ["mainTitleLabel": mainTitleLabel]
        let metrics = ["height": 42, "width": self.bounds.size.width - 80, "top": 130]
        
        self.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-top-[mainTitleLabel(height)]",
                                                           options: [],
                                                           metrics: metrics,
                                                           views: labelVFL))
        self.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-40-[mainTitleLabel(width)]|",
                                                           options: [],
                                                           metrics: metrics,
                                                           views: labelVFL))
    }
}
