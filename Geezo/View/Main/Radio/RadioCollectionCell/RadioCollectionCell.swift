//
//  RadioCollectionCell.swift
//  Geezo
//
//  Created by Aurocheg on 6.10.22.
//

import UIKit

final class RadioCollectionCell: UICollectionViewCell {
    // MARK: - Constraints
    let radioCollectionConstraints = RadioCollectionConstraints()
    
    // MARK: - UI Elements
    public let collectionImageView: UIImageView = {
        let imageView = UIImageView()
        
        imageView.contentMode = .scaleToFill
        imageView.layer.cornerRadius = 8.0
        
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
        addSubview(collectionImageView)
    }
    
    // MARK: - Init Constraints Method
    private func initConstraints() {
        radioCollectionConstraints.addConstraintsToImage(collectionImageView, view: self)
    }
}
