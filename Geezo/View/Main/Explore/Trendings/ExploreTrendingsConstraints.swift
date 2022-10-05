//
//  ExploreTrendingsConstraints.swift
//  Geezo
//
//  Created by Aurocheg on 30.09.22.
//

import UIKit

final class ExploreTrendingsConstraints: UIView {
    public func addConstraintsToTrendingImage(_ trendingImageView: UIImageView, view: UICollectionViewCell) {
        trendingImageView.translatesAutoresizingMaskIntoConstraints = false
        
        trendingImageView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        trendingImageView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        trendingImageView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        trendingImageView.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
    }
    
    public func addConstraintsToTrendingSigner(_ trendingSignerLabel: UILabel, view: UICollectionViewCell) {
        trendingSignerLabel.translatesAutoresizingMaskIntoConstraints = false
        
        trendingSignerLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -18.0).isActive = true
        trendingSignerLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16.0).isActive = true
        trendingSignerLabel.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -32.0).isActive = true
        trendingSignerLabel.heightAnchor.constraint(equalToConstant: 14.0).isActive = true
    }
    
    public func addConstraintsToTrendingTitle(_ trendingTitleLabel: UILabel, tredingSignerLabel: UILabel, view: UICollectionViewCell) {
        trendingTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        trendingTitleLabel.bottomAnchor.constraint(equalTo: tredingSignerLabel.topAnchor, constant: -4.0).isActive = true
        trendingTitleLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16.0).isActive = true
        trendingTitleLabel.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -32.0).isActive = true
        trendingTitleLabel.heightAnchor.constraint(equalToConstant: 19.0).isActive = true
    }
    
    public func addConstraintsToFavorite(_ favoriteButton: UIButton, view: UICollectionViewCell) {
        favoriteButton.translatesAutoresizingMaskIntoConstraints = false
        
        favoriteButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -18.0).isActive = true
        favoriteButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -18.0).isActive = true
        favoriteButton.widthAnchor.constraint(equalToConstant: 20.0).isActive = true
        favoriteButton.heightAnchor.constraint(equalToConstant: 18.0).isActive = true
    }
}
