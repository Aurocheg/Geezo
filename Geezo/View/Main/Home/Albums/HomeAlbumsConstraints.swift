//
//  HomeAlbumsConstraints.swift
//  Geezo
//
//  Created by Aurocheg on 5.10.22.
//

import UIKit

class HomeAlbumsConstraints: UIView {
    public func addConstraintsToImage(_ imageView: UIImageView, view: UICollectionViewCell) {
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        imageView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        imageView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
    
    public func addConstraintsToGroup(_ groupLabel: UILabel, view: UICollectionViewCell) {
        groupLabel.translatesAutoresizingMaskIntoConstraints = false
        
        groupLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -8.0).isActive = true
        groupLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16.0).isActive = true
        groupLabel.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -32.0).isActive = true
        groupLabel.heightAnchor.constraint(equalToConstant: 14.0).isActive = true
    }
    
    public func addConstraintsToTitle(_ titleLabel: UILabel, view: UICollectionViewCell, parent: AnyObject) {
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        titleLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16.0).isActive = true
        titleLabel.bottomAnchor.constraint(equalTo: parent.topAnchor, constant: -4.0).isActive = true
        titleLabel.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -32.0).isActive = true
        titleLabel.heightAnchor.constraint(equalToConstant: 19.0).isActive = true
    }
}
