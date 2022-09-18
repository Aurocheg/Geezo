//
//  ForgotPasswordView.swift
//  Geezo
//
//  Created by Aurocheg on 18.09.22.
//

import UIKit

final class ForgotPasswordView: UIView {
    // MARK: - Init Contraints
    private let forgotPasswordConstraints = ForgotPasswordConstraints()
    
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
    
    private let emailTF: UITextField = {
        TextField().createTF(placeholder: "E-Mail", type: .email)
    }()
    
    private let sentButton: UIButton = {
        Button().createButton(type: .start, background: true, border: true, text: "SENT")
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
        addSubview(mainTitleLabel)
        addSubview(textLabel)
        addSubview(emailTF)
        addSubview(sentButton)
    }
    
    // MARK: - Init Constraints Method
    private func initConstraints() {
        forgotPasswordConstraints.addConstraintsToMainTitle(mainTitleLabel, view: self)
        forgotPasswordConstraints.addConstraintsToText(textLabel, view: self, parent: mainTitleLabel)
        forgotPasswordConstraints.addConstraintsToTF(emailTF, view: self, parent: textLabel)
        forgotPasswordConstraints.addConstraintToSent(sentButton, view: self, parent: emailTF)
    }
}
