//
//  SignInView.swift
//  Geezo
//
//  Created by Aurocheg on 11.09.22.
//

import UIKit

final class SignInView: UIView {
    // MARK: - Components
    private var colorStyle = ColorStyle()
    private var button = Button()
    private var label = Label()
    private var textField = TextField()
    
    // MARK: - Constraints
    private var signInConstraints = SignInConstraints()
    
    // MARK: - UI Elements
    private let backgroundImageView = UIImageView()
    private var mainTitleLabel = UILabel()
    private var emailTF = UITextField()
    private var passwordTF = UITextField()
    private var forgotPasswordButton = UIButton()
    private var signInButton = UIButton()
    private var connectWithLabel = UILabel()
    private let socialButtonsView = UIView()
    private var signUpLabel = UILabel()
    private var signUpButton = UIButton()
    
    // MARK: - Variables
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
        // MARK: Adding background to self
        if let image = UIImage(named: "signInBackground") {
            addBackgroundImage(to: self, imageView: backgroundImageView, image: image)
        }

        // MARK: - Create mainTitleLabel
        mainTitleLabel = label.createLabel(font: "Roboto-Bold", size: 36.0, color: .white, text: "SIGN IN")
        
        // MARK: - Create textFields
        emailTF = textField.createTF(placeholder: "E-Mail", type: .email)
        passwordTF = textField.createTF(placeholder: "Password", type: .password)
        
        // MARK: - Create forgotPasswordButton
        forgotPasswordButton = button.createButton(type: .label, background: false, text: "Forgot password ?")
        addSettingsToForgotPasswordButton(forgotPasswordButton)
        
        // MARK: - Create signInButton
        signInButton = button.createButton(type: .start, border: true, text: "SIGN IN")
        
        // MARK: - Create connectWithLabel
        connectWithLabel = label.createLabel(font: "Montserrat-Bold", size: 11.0, color: colorStyle.neutral2, text: "Connect with")
        addSettingsToConnectWithLabel()
        
        createSocialButtons()
        
        // MARK: - Adding subviews
        addSubview(mainTitleLabel)
        addSubview(emailTF)
        addSubview(passwordTF)
        addSubview(forgotPasswordButton)
        addSubview(signInButton)
        addSubview(connectWithLabel)
    }
    
    // MARK: - Init Constraints
    private func initConstraints() {
        signInConstraints.addConstraintToTitleLabel(title: mainTitleLabel, parent: self)
        signInConstraints.addConstraintsToTF(emailTF: emailTF, passwordTF: passwordTF, title: mainTitleLabel, parent: self)
        signInConstraints.addConstraintsToForgotPasswordButton(button: forgotPasswordButton, passwordTF: passwordTF, parent: self)
        signInConstraints.addConstraintsToSignInButton(signInButton: signInButton, forgotPasswordButton: forgotPasswordButton, parent: self)
        signInConstraints.addConstraintsToConnectWithLabel(label: connectWithLabel, signInButton: signInButton, parent: self)
        signInConstraints.addConstraintsToSocialButtonsView(view: socialButtonsView, connectWithLabel: connectWithLabel, parent: self)
    }
    
    // MARK: - UI Methods
    private func addBackgroundImage(to view: UIView, imageView: UIImageView, image: UIImage) {
        imageView.frame = UIScreen.main.bounds
        imageView.image = image
        imageView.contentMode = .scaleToFill
        view.addSubview(imageView)
    }
        
    private func addSettingsToForgotPasswordButton(_ button: UIButton) {
        button.frame = CGRect(x: 0, y: 0, width: 130, height: 22)
        button.setTitleColor(colorStyle.neutral1, for: .normal)
        button.titleLabel?.font = UIFont(name: "Montserrat-Regular", size: 14.0)
    }
    
    private func addSettingsToConnectWithLabel() {
        connectWithLabel.textAlignment = .center
        connectWithLabel.drawLineOnBothSides(labelWidth: connectWithLabel.frame.width, color: .lightGray)
    }
    
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
