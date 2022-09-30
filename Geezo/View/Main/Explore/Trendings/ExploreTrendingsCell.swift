//
//  ExploreTrendingsCell.swift
//  Geezo
//
//  Created by Aurocheg on 30.09.22.
//

import UIKit

final class ExploreTrendingsCell: UICollectionViewCell {
    // MARK: - Constraints
    private let exploreTrendingsConstraints = ExploreTrendingsConstraints()
    
    // MARK: - UI Elements
    public let trendingImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleToFill
        return imageView
    }()
    
    public let trendingTitleLabel: UILabel = {
        let label = UILabel()
        return label.createLabel(font: "Roboto-Bold", size: 16.0, color: .white, text: "test")
    }()
    
    public let trendingSignerLabel: UILabel = {
        let label = UILabel()
        return label.createLabel(font: "Roboto-Regular", size: 12.0, color: .white, text: "")
    }()
    
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
        addSubview(trendingImageView)
        addSubview(trendingTitleLabel)
        addSubview(trendingSignerLabel)
    }
    
    // MARK: - Init Constraints Method
    private func initConstraints() {
        exploreTrendingsConstraints.addConstraintsToTrendingImage(trendingImageView, view: self)
        exploreTrendingsConstraints.addConstraintsToTrendingSigner(trendingSignerLabel, view: self)
        exploreTrendingsConstraints.addConstraintsToTrendingTitle(trendingTitleLabel, tredingSignerLabel: trendingSignerLabel, view: self)
    }
}
