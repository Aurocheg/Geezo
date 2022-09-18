//
//  ChangePasswordView.swift
//  Geezo
//
//  Created by Aurocheg on 18.09.22.
//

import UIKit

class ChangePasswordView: UIView {
    private let colorStyle = ColorStyle()
    
    // MARK: - Init Constraints
    private let changePasswordConstraints = ChangePasswordConstraints()
    
    // MARK: - Init UI Elements
    private let mainTitleLabel: UILabel = {
        Label().createLabel(font: "Roboto-Bold", size: 28.0, color: .white, text: "Forgot Password?")
    }()
    
    private let textLabel: UILabel = {
        let labelComponent = Label()
        let label = labelComponent.createLabel(font: "Montserrat-Regular", size: 12.0, color: ColorStyle().neutral2, text: "")
        
        label.numberOfLines = 3
        
        label.attributedText = NSAttributedString(string: "If you need help resetting your password, we can help by sending you a link to reset it.").withLineSpacing(14)
        
        return label
    }()
    
    private let passwordTF: UITextField = {
        TextField().createTF(placeholder: "Password", type: .password)
    }()
    
    private let confirmPasswordTF: UITextField = {
        TextField().createTF(placeholder: "Confirm Password", type: .password)
    }()
    
    private let changePasswordButton: UIButton = {
        Button().createButton(type: .start, background: true, border: true, text: "CHANGE PASSWORD")
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
        backgroundColor = colorStyle.brand1
        
        addSubview(mainTitleLabel)
        addSubview(textLabel)
        addSubview(passwordTF)
        addSubview(confirmPasswordTF)
        addSubview(changePasswordButton)
    }
    
    // MARK: - Init Constraints Method
    private func initConstraints() {
        changePasswordConstraints.addConstraintsToMainTitle(mainTitleLabel, view: self)
        changePasswordConstraints.addConstraintsToText(textLabel, view: self, parent: mainTitleLabel)
        changePasswordConstraints.addConstraintsToTF(arrayTF: [passwordTF, confirmPasswordTF], view: self, parent: textLabel)
        changePasswordConstraints.addConstraintsToChangePassword(changePasswordButton, view: self, parent: confirmPasswordTF)
    }
}
