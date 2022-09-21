//
//  VerifyDoneView.swift
//  Geezo
//
//  Created by Aurocheg on 18.09.22.
//

import UIKit

class VerifyDoneView: UIView {
    private let colorStyle = ColorStyle()
    
    // MARK: - Init Constraints
    private let commonConstraints = CommonConstraints()
    private let verifyDoneConstraints = VerifyDoneConstraints()
    
    // MARK: - Init UI Elements
    private let mainTitleLabel: UILabel = {
        Label().createLabel(font: "Roboto-Bold", size: 28.0, color: .white, text: "Almost Done!")
    }()
    
    private let textLabel: UILabel = {
        Label().createLabel(font: "Montserrat-Regular", size: 14.0, color: .white, text: "Please Verify your Phone.")
    }()
    
    public let continueButton: UIButton = {
        Button().createButton(type: .start, background: true, border: true, text: "CONTINUE")
    }()
    
    // MARK: - Init Method
    init() {
        super.init(frame: .zero)
    
        initViews()
        initConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func initViews() {
        backgroundColor = colorStyle.brand1
        
        addSubview(mainTitleLabel)
        addSubview(textLabel)
        addSubview(continueButton)
    }
    
    private func initConstraints() {
        verifyDoneConstraints.addConstraintsToMainTitle(mainTitleLabel, view: self)
        commonConstraints.addConstraintsToButton(continueButton, view: self, parent: textLabel)
        commonConstraints.addConstraintsToText(textLabel, view: self, parent: mainTitleLabel, topConstant: 11.0, widthConstant: 177.0, heightConstant: 22.0)
    }
}
