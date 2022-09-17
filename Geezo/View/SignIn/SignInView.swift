//
//  SignInView.swift
//  Geezo
//
//  Created by Aurocheg on 11.09.22.
//

import UIKit

final class SignInView: UIView {
    // MARK: - Init Constraints
    private var signInConstraints = SignInConstraints()
    
    // MARK: - Init UI Elements
    private var scrollView: UIScrollView = {
        let view = UIScrollView()
        
        return view
    }()
    
    private let backgroundImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.frame = UIScreen.main.bounds
        
        if let image = UIImage(named: "signInBackground") {
            imageView.image = image
            imageView.contentMode = .scaleToFill
        }
        
        return imageView
    }()
    
    private var mainTitleLabel: UILabel = {
        let label = Label()
        
        return label.createLabel(font: "Roboto-Bold", size: 36.0, color: .white, text: "SIGN IN")
    }()
    
    private var emailTF: UITextField = {
        let textFieldComponent = TextField()
        
        let tf = textFieldComponent.createTF(placeholder: "E-Mail", type: .email)
        
        return tf
    }()
    
    private var passwordTF: UITextField = {
        let textFieldComponent = TextField()

        let tf = textFieldComponent.createTF(placeholder: "Password", type: .password)
        
        return tf
    }()
    
    private var forgotPasswordButton: UIButton = {
        let colorStyle = ColorStyle()
        let buttonComponent = Button()
        
        let button = buttonComponent.createButton(type: .label, background: false, text: "Forgot password ?")
        
        button.frame = CGRect(x: 0, y: 0, width: 130, height: 22)
        button.setTitleColor(colorStyle.neutral1, for: .normal)
        button.titleLabel?.font = UIFont(name: "Montserrat-Regular", size: 14.0)
        
        return button
    }()
    
    private var signInButton: UIButton = {
        let buttonComponent = Button()
        let button = buttonComponent.createButton(type: .start, border: false, text: "SIGN IN")
        
        return button
    }()
    
    private var connectWithLabel: UILabel = {
        let colorStyle = ColorStyle()
        let labelComponent = Label()
        
        let label = labelComponent.createLabel(font: "Montserrat-Bold", size: 11.0, color: colorStyle.neutral2, text: "Connect with")

        label.textAlignment = .center
        label.drawLineOnBothSides(labelWidth: label.frame.width, color: .lightGray)
        
        return label
    }()
    
    private let socialButtonsView = UIView()
    private var signUpLabel = UILabel()
    private var signUpButton = UIButton()
    
    private let socialIconsArray = [UIImage(named: "facebook"), UIImage(named: "google-plus"), UIImage(named: "twitter")]
    
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
        addSubview(emailTF)
        addSubview(passwordTF)
        addSubview(forgotPasswordButton)
        addSubview(signInButton)
        addSubview(connectWithLabel)
    }
    
    // MARK: - Init Constraints
    private func initConstraints() {
        signInConstraints.addConstraintsToMainTitle(mainTitleLabel, view: self)
        signInConstraints.addConstraintsToTF(arrayTF: [emailTF, passwordTF], view: self, parent: mainTitleLabel)
        signInConstraints.addConstraintsToForgotPassword(forgotPasswordButton, view: self, parent: passwordTF)
        signInConstraints.addConstraintsToSignIn(signInButton, view: self, parent: forgotPasswordButton)
        signInConstraints.addConstraintsToConnectWith(connectWithLabel, view: self, parent: signInButton)
    }
    
    // MARK: - UI Methods
    private func createSocialButtons() {
        var padding = 0
        
        socialButtonsView.frame = CGRect(x: 0, y: 0, width: 144, height: 40)
        
        for icon in socialIconsArray {
            let button = UIButton()
            button.setImage(icon, for: .normal)
            button.frame = CGRect(x: padding, y: 0, width: 40, height: 40)
            socialButtonsView.addSubview(button)
            padding += Int(button.frame.width) + 12
        }
        
        addSubview(socialButtonsView)
    }
}
