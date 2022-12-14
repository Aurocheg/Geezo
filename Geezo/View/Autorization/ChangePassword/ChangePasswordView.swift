//
//  ChangePasswordView.swift
//  Geezo
//
//  Created by Aurocheg on 18.09.22.
//

import UIKit

final class ChangePasswordView: UIView {
    private let colorStyle = ColorStyle()
    
    // MARK: - Init Constraints
    private let commonConstraints = CommonConstraints()
    
    // MARK: - Init UI Elements
    private let mainTitleLabel: UILabel = {
        let label = UILabel()
        return label.createLabel(font: "Roboto-Bold", size: 28.0, color: .white, text: "Forgot Password?")
    }()
    
    private let textLabel: UILabel = {
        var label = UILabel()
        
        label = label.createLabel(font: "Montserrat-Regular", size: 12.0, color: ColorStyle().neutral2, text: "")
        label.numberOfLines = 3
        label.attributedText = NSAttributedString(string: "If you need help resetting your password, we can help by sending you a link to reset it.").withLineSpacing(14)
        return label
    }()
    
    private let passwordTF: UITextField = {
        let TF = UITextField()
        return TF.createTF(placeholder: "Password", type: .password)
    }()
    
    private let confirmPasswordTF: UITextField = {
        let TF = UITextField()
        return TF.createTF(placeholder: "Confirm Password", type: .password)
    }()
    
    public let changePasswordButton: UIButton = {
        let TF = UIButton()
        return TF.createButton(type: .start, background: true, border: true, text: "CHANGE PASSWORD")
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
        commonConstraints.addConstraintsToMainTitle(mainTitleLabel, view: self, leftConstant: 24.0, topConstant: 112.0, widthConstant: 227.0, heightConstant: 33.0)
        commonConstraints.addConstraintsToText(textLabel, view: self, parent: mainTitleLabel, leftConstant: 24.0, topConstant: 28.0, widthConstant: 250.0, heightConstant: 72.0)
        commonConstraints.addConstraintsToTF(arrayTF: [passwordTF, confirmPasswordTF], view: self, parent: textLabel)
        commonConstraints.addConstraintsToButton(changePasswordButton, view: self, parent: confirmPasswordTF)
    }
}
