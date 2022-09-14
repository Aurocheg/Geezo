//
//  SignInView.swift
//  Geezo
//
//  Created by Aurocheg on 11.09.22.
//

import UIKit


final class SignInView: UIView {
    // MARK: UI Elements
    private let backgroundImageView = UIImageView()
    private var mainTitleLabel = UILabel()
    private var emailTF = UITextField()
    private var passwordTF = UITextField()
    private var forgotPasswordButton = UIButton()
    private var signInButton = UIButton()
    private var connectWithLabel = UILabel()
    private var signUpLabel = UILabel()
    private var signUpButton = UIButton()
    
    // MARK: Components Init
    private var colorStyle = ColorStyle()
    private var button = Button()
    private var label = Label()
    private var textField = TextField()
    
    // MARK: Arrays
    private let socialButtonsImagesArray = [UIImage(named: "facebook"), UIImage(named: "google-plus"), UIImage(named: "twitter")]
    
    // MARK: Init Method
    init() {
        super.init(frame: .zero)
        
        // MARK: Setup Views
        setupViews()
        
        // MARK: Setup Constraints
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
        
    // MARK: Setup Views
    private func setupViews() {
        if let image = UIImage(named: "signInBackground") {
            addBackgroundImage(to: self, imageView: backgroundImageView, image: image)
        }

        mainTitleLabel = label.createLabel(font: "Roboto-Bold", size: 36.0, color: .white, text: "SIGN IN")
        
        // MARK: Creating TextFields
        emailTF = textField.createTF(placeholder: "E-Mail", type: .email)
        passwordTF = textField.createTF(placeholder: "Password", type: .password)
        
        // MARK: Creating Forgot Password Button
        forgotPasswordButton = button.createButton(type: .label, background: false, text: "Forgot password ?")
        addSettingsToForgotPasswordButton()
        
        // MARK: Creating Sign In Button
        signInButton = button.createButton(type: .start, border: true, text: "SIGN IN")
        
        // MARK: Creating Connect With Label
        connectWithLabel = label.createLabel(font: "Montserrat-Bold", size: 11.0, color: colorStyle.neutral2, text: "Connect with")
        addSettingsToConnectWithLabel()
        
        // MARK: Creating Social Buttons
        createSocialButtons()
        
        // MARK: Adding subviews
        addSubview(mainTitleLabel)
        addSubview(emailTF)
        addSubview(passwordTF)
        addSubview(forgotPasswordButton)
        addSubview(signInButton)
        addSubview(connectWithLabel)
    }
    
    // MARK: UI Methods
    private func addBackgroundImage(to view: UIView, imageView: UIImageView, image: UIImage) {
        imageView.frame = UIScreen.main.bounds
        imageView.image = image
        imageView.contentMode = .scaleToFill
        view.addSubview(imageView)
    }
    
    private func createSocialButtons() {
        for image in socialButtonsImagesArray {
            var myButton = UIButton()
            myButton = button.createButton(type: .social, background: false, border: false, image: image)
            addSubview(myButton)
        }
    }
    
    // MARK: Methods for adding settings for UI elements
    private func addSettingsToForgotPasswordButton() {
        forgotPasswordButton.frame = CGRect(x: 0, y: 0, width: 130, height: 22)
        forgotPasswordButton.setTitleColor(colorStyle.neutral1, for: .normal)
        forgotPasswordButton.titleLabel?.font = UIFont(name: "Montserrat-Regular", size: 14.0)
    }
    
    private func addSettingsToConnectWithLabel() {
        connectWithLabel.textAlignment = .center
    }
    
    // MARK: Setup Constraints Method
    private func setupConstraints() {
        addConstraintToTitleLabel()
        addConstraintsToTF()
        addConstraintsToForgotPasswordButton()
        addConstraintsToSignInButton()
        addConstraintsToConnectWithLabel()
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
    
    private func addConstraintsToTF() {
        emailTF.translatesAutoresizingMaskIntoConstraints = false
        passwordTF.translatesAutoresizingMaskIntoConstraints = false
        
        let textFieldVFL = ["emailTF": emailTF, "passwordTF": passwordTF,"mainTitleLabel": mainTitleLabel]
        let metrics = ["top": 68]
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:[mainTitleLabel]-top-[emailTF]",
                                                           options: [],
                                                           metrics: metrics,
                                                           views: textFieldVFL))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-40-[emailTF]",
                                                           options: [],
                                                           metrics: metrics,
                                                           views: textFieldVFL))
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:[emailTF]-50-[passwordTF]",
                                                           options: [],
                                                           metrics: metrics,
                                                           views: textFieldVFL))
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-40-[passwordTF]",
                                                           options: [],
                                                           metrics: metrics,
                                                           views: textFieldVFL))
    }
    
    private func addConstraintsToForgotPasswordButton() {
        forgotPasswordButton.translatesAutoresizingMaskIntoConstraints = false
        
        let forgotPasswordButtonVFL = ["forgotPasswordButton": forgotPasswordButton, "passwordTF": passwordTF]
        let metrics = ["top": 35]
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:[passwordTF]-top-[forgotPasswordButton]",
                                                      options: [],
                                                      metrics: metrics,
                                                      views: forgotPasswordButtonVFL))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:[forgotPasswordButton]-40-|",
                                                      options: [],
                                                      metrics: metrics,
                                                      views: forgotPasswordButtonVFL))
    }
    
    private func addConstraintsToSignInButton() {
        signInButton.translatesAutoresizingMaskIntoConstraints = false
        
        let signInButtonVFL = ["signInButton": signInButton, "forgotPasswordButton": forgotPasswordButton]
        let metrics = ["top": 65, "width": Int(UIScreen.main.bounds.width - 80), "height": 45]
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:[forgotPasswordButton]-top-[signInButton(height)]",
                                                      options: [],
                                                      metrics: metrics,
                                                      views: signInButtonVFL))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-40-[signInButton(width)]",
                                                      options: [],
                                                      metrics: metrics,
                                                      views: signInButtonVFL))
    }
    
    private func addConstraintsToConnectWithLabel() {
        connectWithLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let connectWithLabelVFL = ["connectWithLabel": connectWithLabel, "signInButton": signInButton]
        let metrics = ["top": 135, "width": Int(UIScreen.main.bounds.width - 80), "height": 13]
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:[signInButton]-top-[connectWithLabel(height)]",
                                                      options: [],
                                                      metrics: metrics,
                                                      views: connectWithLabelVFL))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-40-[connectWithLabel(width)]",
                                                      options: [],
                                                      metrics: metrics,
                                                      views: connectWithLabelVFL))
    }
}
