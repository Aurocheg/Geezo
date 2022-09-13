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
        
        // MARK: Setup Views
        setupViews()
        
        // MARK: Setup Constraints
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: UI Methods
    private func addBackgroundImage(to view: UIView, imageView: UIImageView, image: UIImage) {
        imageView.frame = UIScreen.main.bounds
        imageView.image = image
        imageView.contentMode = .scaleToFill
        view.addSubview(imageView)
    }
    
    // MARK: Setup Views
    private func setupViews() {
        if let image = UIImage(named: "signInBackground") {
            addBackgroundImage(to: self, imageView: backgroundImageView, image: image)
        }

        mainTitleLabel = label.createLabel(font: "Roboto-Bold", size: 36.0, color: .white, text: "SIGN IN")
        emailTF = textField.createTF(placeholder: "E-Mail", type: .email)
        passwordTF = textField.createTF(placeholder: "Password", type: .password)
        
        addSubview(mainTitleLabel)
        addSubview(emailTF)
        addSubview(passwordTF)
    }
    
    // MARK: Setup Constraints Method
    private func setupConstraints() {
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
