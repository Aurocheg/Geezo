//
//  ExploreTopicsConstraints.swift
//  Geezo
//
//  Created by Aurocheg on 3.10.22.
//

import UIKit

final class ExploreTopicsConstraints: UIView {
    public func addConstraintsToImage(_ imageView: UIImageView, parent: UICollectionViewCell) {
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        imageView.leadingAnchor.constraint(equalTo: parent.leadingAnchor).isActive = true
        imageView.trailingAnchor.constraint(equalTo: parent.trailingAnchor).isActive = true
        imageView.topAnchor.constraint(equalTo: parent.topAnchor).isActive = true
        imageView.bottomAnchor.constraint(equalTo: parent.bottomAnchor).isActive = true
    }
    
    public func addConstraintsToLabel(_ topicsLabel: UILabel, parent: UICollectionViewCell) {
        topicsLabel.translatesAutoresizingMaskIntoConstraints = false
        
        topicsLabel.centerXAnchor.constraint(equalTo: parent.centerXAnchor).isActive = true
        topicsLabel.centerYAnchor.constraint(equalTo: parent.centerYAnchor).isActive = true
    }
}
