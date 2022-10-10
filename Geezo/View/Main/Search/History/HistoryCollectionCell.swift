//
//  HistoryCollectionCell.swift
//  Geezo
//
//  Created by Aurocheg on 8.10.22.
//

import UIKit

final class HistoryCollectionCell: UICollectionViewCell {
    // MARK: - Init Constraints
    private let historyAndTopSearchigCellConstraints = HistoryAndTopSearchigCellConstraints()
    
    // MARK: - Init UI Elements
    public let historyButton: UIButton = {
        let button = UIButton()
        return button.createButton(type: .label, background: false, border: true, text: "")
    }()
    
    // MARK: - Init Method
    override init(frame: CGRect) {
        super.init(frame: frame)
                                
        initViews()
        initConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Init Views Method
    private func initViews() {
        addSubview(historyButton)
    }
    
    // MARK: - Init Constraints Method
    private func initConstraints() {
        historyAndTopSearchigCellConstraints.addConstraintsToButton(historyButton, view: self)
    }
    
}
