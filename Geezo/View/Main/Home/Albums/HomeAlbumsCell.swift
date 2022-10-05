//
//  HomeAlbumsCell.swift
//  Geezo
//
//  Created by Aurocheg on 4.10.22.
//

import UIKit

final class HomeAlbumsCell: UICollectionViewCell {
    // MARK: - Init Constraints
    private let homeAlbumsConstraints = HomeAlbumsConstraints()
    
    // MARK: - Init UI Elements
    public let albumImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleToFill
        return imageView
    }()
    
    public let albumTitleLabel: UILabel = {
        let label = UILabel()
        return label.createLabel(font: "Roboto-Bold", size: 16.0, color: .white, text: "")
    }()
    
    public let albumGroupLabel: UILabel = {
        let label = UILabel()
        return label.createLabel(font: "Roboto-Regular", size: 12.0, color: .white, text: "")
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
        addSubview(albumImageView)
        addSubview(albumTitleLabel)
        addSubview(albumGroupLabel)
    }
    
    // MARK: - Init Constraints Method
    private func initConstraints() {
        homeAlbumsConstraints.addConstraintsToImage(albumImageView, view: self)
        homeAlbumsConstraints.addConstraintsToGroup(albumGroupLabel, view: self)
        homeAlbumsConstraints.addConstraintsToTitle(albumTitleLabel, view: self, parent: albumGroupLabel)
    }
}
