//
//  TrendingCollectionCell.swift
//  Geezo
//
//  Created by Aurocheg on 29.09.22.
//

import UIKit

final class ExploreTrendingCollectionCell: UICollectionViewCell {
    // MARK: - Constraints
    private let trendingCollectionConstraints = TrendingCollectionConstraints()
    
    // MARK: - UI Elements
    public let trendingImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleToFill
        return imageView
    }()
    
    public let trendingTitleLabel: UILabel = {
        let label = UILabel()
        return label.createLabel(font: "Roboto-Bold", size: 16.0, color: .white, text: "")
    }()
    
    public let trendingSignerLabel: UILabel = {
        let label = UILabel()
        return label.createLabel(font: "Roboto-Regular", size: 14.0, color: .white, text: "")
    }()
    
    private let trendingLike: UIButton = {
        let button = UIButton()
        
        if let image = UIImage(named: "favorite") {
            return button.createButton(type: .social, background: false, border: false, text: "", image: image)
        }
        
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
                
        initViews()
        initConstraints()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    // MARK: - Init Views Method
    private func initViews() {
        addSubview(trendingImageView)
        addSubview(trendingTitleLabel)
        addSubview(trendingSignerLabel)
        addSubview(trendingLike)
    }
    
    // MARK: - Init Constraints Method
    private func initConstraints() {
        trendingCollectionConstraints.addConstraintsToImage(trendingImageView, view: self)
        trendingCollectionConstraints.addConstraintsToTrendingSigner(trendingSignerLabel, view: self)
    }
}
