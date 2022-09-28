//
//  VerifyCodeView.swift
//  Geezo
//
//  Created by Aurocheg on 18.09.22.
//

import UIKit

final class VerifyCodeView: UIView {
    let colorStyle = ColorStyle()

    // MARK: - Init Constraints
    private let commonConstraints = CommonConstraints()
    private let verifyCodeConstraints = VerifyCodeConstraints()
    
    // MARK: - Init UI Elements
    private let mainTitleLabel: UILabel = {
        var label = UILabel()
        
        label = label.createLabel(font: "Roboto-Bold", size: 28.0, color: .white, text: "Verify Phone Number")
        label.numberOfLines = 2
        return label
    }()
    
    public let continueButton: UIButton = {
        let button = UIButton()
        return button.createButton(type: .start, background: true, border: true, text: "CONTINUE")
    }()
    
    public let codeView: UIView = {
        let view = UIView()
        let numberViews = [UIView(), UIView(), UIView(), UIView()]
        var padding = 0
                
        for numberView in numberViews {
            numberView.frame = CGRect(x: padding, y: 0, width: 45, height: 3)
            numberView.backgroundColor = UIColor(red: 0.216, green: 0.22, blue: 0.235, alpha: 1)
            padding += Int(numberView.frame.width) + 30
            
            view.addSubview(numberView)
        }
    
        return view
    }()
    
    public let resentCodeButton: UIButton = {
        let button = UIButton()
        return button.createButton(type: .start, background: false, border: false, text: "Resent Code")
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
    
    // MARK: - Init Views Method
    private func initViews() {
        backgroundColor = colorStyle.brand1
        
        addSubview(mainTitleLabel)
        addSubview(codeView)
        addSubview(continueButton)
        addSubview(resentCodeButton)
    }
    
    // MARK: - Init Constraints Method
    private func initConstraints() {
        commonConstraints.addConstraintsToMainTitle(mainTitleLabel, view: self, leftConstant: 24.0, topConstant: 120.0, widthConstant: 197.0, heightConstant: 66.0)
        verifyCodeConstraints.addConstraintsToCode(codeView, view: self, parent: mainTitleLabel)
        commonConstraints.addConstraintsToButton(continueButton, view: self, parent: codeView)
        commonConstraints.addConstraintsToButton(resentCodeButton, view: self, parent: continueButton, centered: true, topConstant: 35.0, widthConstant: 100.0, heightConstant: 22.0)
    }
}
