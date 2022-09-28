//
//  AlbumConstraints.swift
//  Geezo
//
//  Created by Aurocheg on 23.09.22.
//

import UIKit

class AlbumConstraints: UIView {
    public func addConstraintsToCollection(_ collectionView: UICollectionView, parent: AnyObject) {
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        
        collectionView.topAnchor.constraint(equalTo: parent.topAnchor).isActive = true
        collectionView.bottomAnchor.constraint(equalTo: parent.bottomAnchor).isActive = true
        collectionView.trailingAnchor.constraint(equalTo: parent.trailingAnchor).isActive = true
        collectionView.leadingAnchor.constraint(equalTo: parent.leadingAnchor).isActive = true
    }
    
    public func addConstraintsToImage(_ imageView: UIImageView, cell: UICollectionViewCell) {
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        imageView.topAnchor.constraint(equalTo: cell.topAnchor).isActive = true
        imageView.leftAnchor.constraint(equalTo: cell.leftAnchor).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 148.0).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 139.0).isActive = true
    }
}
