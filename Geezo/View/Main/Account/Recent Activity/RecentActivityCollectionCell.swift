//
//  RecentActivityCollectionCell.swift
//  Geezo
//
//  Created by Aurocheg on 7.10.22.
//

import UIKit

final class RecentActivityCollectionCell: UICollectionViewCell {
    // MARK: - Constraints
    private let recentActivityCellConstraints = RecentActivityCellConstraints()
    
    // MARK: - Init UI Elements
    public let recentImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleToFill
        return imageView
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
        addSubview(recentImageView)
    }
    
    // MARK: - Init Constraints Method
    private func initConstraints() {
        recentActivityCellConstraints.addConstraintsToImage(recentImageView, view: self)
    }
}
