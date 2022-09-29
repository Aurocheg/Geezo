//
//  TrendingCollectionConstraints.swift
//  Geezo
//
//  Created by Aurocheg on 29.09.22.
//

import UIKit

final class TrendingCollectionConstraints: UIView {
    public func addConstraintsToImage(_ imageView: UIImageView, view: UICollectionViewCell) {
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        imageView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        imageView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        imageView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        imageView.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
    }
    
    public func addConstraintsToTrendingSigner(_ trendingSignerLabel: UILabel, view: UICollectionViewCell) {
        trendingSignerLabel.translatesAutoresizingMaskIntoConstraints = false
        
        trendingSignerLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16.0).isActive = true
        trendingSignerLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 18.0).isActive = true
        trendingSignerLabel.widthAnchor.constraint(equalToConstant: 120.0).isActive = true
        trendingSignerLabel.heightAnchor.constraint(equalToConstant: 14.0).isActive = true
    }
    
}
