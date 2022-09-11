//
//  SignInView.swift
//  Geezo
//
//  Created by Aurocheg on 11.09.22.
//

import UIKit

class SignInView: UIView {
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
        
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: Setup Views Method
    func setupViews() {
        createMainTitleLabel()
    }
    
    // MARK: UI Methods
    func createMainTitleLabel() {
        mainTitleLabel = label.createLabel(font: "Roboto-Bold", size: 36.0, color: .white, text: "SIGN IN")
        mainTitleLabel.frame = CGRect(x: 100, y: 100, width: 100, height: 200)

        addConstraintsToTitleLabel(title: mainTitleLabel)
        
        addSubview(mainTitleLabel)
    }
    
    // MARK: Constraints Methods
    func addConstraintsToTitleLabel(title: UILabel) {
        NSLayoutConstraint.activate([
            
        ])
    }
}
