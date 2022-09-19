//
//  SignUpView.swift
//  Geezo
//
//  Created by Aurocheg on 18.09.22.
//

import UIKit

final class SignUpView: UIView {
    // MARK: - Init Constraints
    private let commonConstraints = CommonConstraints()
    
    // MARK: - Init UI Elements
    private let backgroundImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.frame = UIScreen.main.bounds
        
        if let image = UIImage(named: "signUpBackground") {
            imageView.image = image
            imageView.contentMode = .scaleToFill
        }
        
        return imageView
    }()
    
    private let mainTitleLabel: UILabel = {
        Label().createLabel(font: "Roboto-Bold", size: 36.0, color: .white, text: "SIGN UP")
    }()
    
    private let nameTF: UITextField = {
        TextField().createTF(placeholder: "Name", type: .name)
    }()
    
    private let emailTF: UITextField = {
        TextField().createTF(placeholder: "E-Mail", type: .email)
    }()
    
    private let passwordTF: UITextField = {
        TextField().createTF(placeholder: "Password", type: .password)
    }()
    
    private let signUpButton: UIButton = {
        Button().createButton(type: .start, border: false, text: "SIGN UP")
    }()
    
    // MARK: - Init
    init() {
        super.init(frame: .zero)
    
        initViews()
        initConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Init Views Method
    private func initViews() {
        addSubview(backgroundImageView)
        addSubview(mainTitleLabel)
        addSubview(nameTF)
        addSubview(emailTF)
        addSubview(passwordTF)
        addSubview(signUpButton)
    }
    
    // MARK: - Init Constraints Method
    private func initConstraints() {
        commonConstraints.addConstraintsToMainTitle(mainTitleLabel, view: self, widthConstant: 140.0, heightConstant: 42.0)
        commonConstraints.addConstraintsToTF(arrayTF: [nameTF, emailTF, passwordTF], view: self, parent: mainTitleLabel)
        commonConstraints.addConstraintsToButton(signUpButton, view: self, parent: passwordTF)
    }
}
