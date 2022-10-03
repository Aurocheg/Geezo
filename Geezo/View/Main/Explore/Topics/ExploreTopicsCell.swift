//
//  ExploreTopicsCell.swift
//  Geezo
//
//  Created by Aurocheg on 3.10.22.
//

import UIKit

final class ExploreTopicsCell: UICollectionViewCell {
    // MARK: - Constraints
    private let exploreTopicsConstraints = ExploreTopicsConstraints()
    
    // MARK: - UI Elements
    public let topicsImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleToFill
        imageView.layer.cornerRadius = 4
        return imageView
    }()
    
    public let topicsLabel: UILabel = {
        let label = UILabel()
        return label.createLabel(font: "Roboto-Bold", size: 14.0, color: .white, text: "")
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
        addSubview(topicsImageView)
        addSubview(topicsLabel)
    }
    
    // MARK: - Init Constraints Method
    private func initConstraints() {
        exploreTopicsConstraints.addConstraintsToImage(topicsImageView, parent: self)
        exploreTopicsConstraints.addConstraintsToLabel(topicsLabel, parent: self)
    }
}
