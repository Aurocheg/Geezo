//
//  SignInView.swift
//  Geezo
//
//  Created by Aurocheg on 11.09.22.
//

import UIKit

final class SignInView: UIView {
    // MARK: - Init Constraints
    private let commonConstraints = CommonConstraints()
    private let signInConstraints = SignInConstraints()
    
    // MARK: - Init UI Elements
    private let backgroundImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.frame = UIScreen.main.bounds
        
        if let image = UIImage(named: "signInBackground") {
            imageView.image = image
            imageView.contentMode = .scaleToFill
        }
        
        return imageView
    }()
    
    private let mainTitleLabel: UILabel = {
        let label = UILabel()
        return label.createLabel(font: "Roboto-Bold", size: 36.0, color: .white, text: "SIGN IN")
    }()
    
    public let emailTF: UITextField = {
        let TF = UITextField()
        return TF.createTF(placeholder: "E-Mail", type: .email)
    }()
    
    public let passwordTF: UITextField = {
        let TF = UITextField()
        return TF.createTF(placeholder: "Password", type: .password)
    }()
    
    public let forgotPasswordButton: UIButton = {
        let colorStyle = ColorStyle()
        var button = UIButton()
        
        button = button.createButton(type: .label, background: false, text: "Forgot password ?")
        button.frame = CGRect(x: 0, y: 0, width: 130, height: 22)
        button.setTitleColor(colorStyle.neutral1, for: .normal)
        button.titleLabel?.font = UIFont(name: "Montserrat-Regular", size: 14.0)
        
        return button
    }()
    
    public let signInButton: UIButton = {
        let button = UIButton()
        return button.createButton(type: .start, border: false, text: "SIGN IN")
    }()
    
    private let connectWithLabel: UILabel = {
        let colorStyle = ColorStyle()
        var label = UILabel()
        
        label = label.createLabel(font: "Montserrat-Bold", size: 11.0, color: colorStyle.neutral2, text: "Connect with")
        label.textAlignment = .center
        label.drawLineOnBothSides(labelWidth: label.frame.width, color: .lightGray)
        
        return label
    }()
    
    private let socialButtonsView: UIView = {
        let view = UIView()
        let socialIconsArray = [UIImage(named: "facebook"), UIImage(named: "google-plus"), UIImage(named: "twitter")]
        var padding = 0
        
        view.frame = CGRect(x: 0, y: 0, width: 144, height: 40)
        
        for icon in socialIconsArray {
            let button = UIButton()
            button.setImage(icon, for: .normal)
            button.frame = CGRect(x: padding, y: 0, width: 40, height: 40)
            view.addSubview(button)
            padding += Int(button.frame.width) + 12
        }
        
        return view
    }()
    
    private let signUpView: UIView = {
        let view = UIView()
        view.frame = CGRect(x: 0, y: 0, width: 199, height: 22)
        
        return view
    }()
    
    private var signUpLabel: UILabel = {
        let label = UILabel()
        return label.createLabel(font: "Roboto-Regular", size: 14.0, color: .white, text: "Don't have an account?")
    }()
    
    public var signUpButton: UIButton = {
        var button = UIButton()
        let colorStyle = ColorStyle()
        
        button = button.createButton(type: .start, background: false, text: "Sign Up")
        button.setTitleColor(colorStyle.brand2, for: .normal)
        button.titleLabel?.font = UIFont(name: "Roboto-Bold", size: 14.0)
        
        return button
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
        addSubview(emailTF)
        addSubview(passwordTF)
        addSubview(forgotPasswordButton)
        addSubview(signInButton)
        addSubview(connectWithLabel)
        addSubview(socialButtonsView)
        
        signUpView.addSubview(signUpLabel)
        signUpView.addSubview(signUpButton)
        
        addSubview(signUpView)
    }
    
    // MARK: - Init Constraints Method
    private func initConstraints() {
        commonConstraints.addConstraintsToMainTitle(mainTitleLabel, view: self, widthConstant: 128.0, heightConstant: 42.0)
        commonConstraints.addConstraintsToTF(arrayTF: [emailTF,passwordTF], view: self, parent: mainTitleLabel)
        signInConstraints.addConstraintsToForgotPassword(forgotPasswordButton, view: self, parent: passwordTF)
        commonConstraints.addConstraintsToButton(signInButton, view: self, parent: forgotPasswordButton)
        signInConstraints.addConstraintsToConnectWith(connectWithLabel, view: self, parent: signInButton)
        signInConstraints.addConstraintsToSocialButtons(socialButtonsView, view: self, parent: connectWithLabel)
        signInConstraints.addConstraintsToSignUp(signUpView, view: self, parent: socialButtonsView, signUpLabel: signUpLabel, signUpButton: signUpButton)
    }
}
