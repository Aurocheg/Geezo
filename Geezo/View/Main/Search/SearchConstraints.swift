//
//  SearchConstraints.swift
//  Geezo
//
//  Created by Aurocheg on 8.10.22.
//

import UIKit

final class SearchConstraints: UIView {
    public func addConstraintsToSearchTF(_ searchTF: UISearchTextField, view: UIView) {
        searchTF.translatesAutoresizingMaskIntoConstraints = false
        
        searchTF.topAnchor.constraint(equalTo: view.topAnchor, constant: 52.0).isActive = true
        searchTF.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 24.0).isActive = true
        searchTF.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -48.0).isActive = true
        searchTF.heightAnchor.constraint(equalToConstant: 36.0).isActive = true
    }
    
    public func addConstraintsToCollection(_ collectionView: UICollectionView, view: UIView, parent: AnyObject) {
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        
        collectionView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 24.0).isActive = true
        collectionView.topAnchor.constraint(equalTo: parent.bottomAnchor, constant: 12.0).isActive = true
        collectionView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -48.0).isActive = true
    }
}
