//
//  RadioView.swift
//  Geezo
//
//  Created by Aurocheg on 19.09.22.
//

import UIKit

class RadioView: UIView {
    let colorStyle = ColorStyle()
    
    // MARK: - Init Constraints
    
    // MARK: - Init UI Elements
    
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
    }
    
    // MARK: - Constraints Method
    private func initConstraints() {
        
    }
}
