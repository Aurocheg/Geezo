//
//  VerifyPhoneView.swift
//  Geezo
//
//  Created by Aurocheg on 18.09.22.
//

import UIKit

final class VerifyPhoneView: UIView {
    private let colorStyle = ColorStyle()
    
    // MARK: - Init Constraints
    private let commonConstraints = CommonConstraints()
    
    // MARK: - Init UI Elements
    private let mainTitleLabel: UILabel = {
        var label = UILabel()
        
        label = label.createLabel(font: "Roboto Bold", size: 28.0, color: .white, text: "To continue enter your phone number")
        label.numberOfLines = 0
        return label
    }()
    
    private let phoneTF: UITextField = {
        let TF = UITextField()
        return TF.createTF(placeholder: "Phone", type: .phone)
    }()
    
    public let continueButton: UIButton = {
        let button = UIButton()
        return button.createButton(type: .start, background: true, border: true, text: "CONTINUE")
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
        addSubview(phoneTF)
        addSubview(continueButton)
    }
    
    // MARK: - Init Constraints Method
    private func initConstraints() {
        commonConstraints.addConstraintsToMainTitle(mainTitleLabel, view: self, leftConstant: 24.0, topConstant: 116.0, widthConstant: 253.0, heightConstant: 66.0)
        commonConstraints.addConstraintsToTF(textField: phoneTF, view: self, parent: mainTitleLabel)
        commonConstraints.addConstraintsToButton(continueButton, view: self, parent: phoneTF)
    }

}
