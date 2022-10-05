//
//  TopicsView.swift
//  Geezo
//
//  Created by Aurocheg on 4.10.22.
//

import UIKit

class TopicsView: UIView {
    let colorStyle = ColorStyle()
    // MARK: - Init Constraints
    
    // MARK: - Init UI Elements
    
    // MARK: - Init Method
    init() {
        super.init(frame: .zero)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Init Views Method
    private func initViews() {
        backgroundColor = colorStyle.brand1
    }
    
    // MARK: - Init Constraints Method
    private func initConstraints() {
        
    }
}
