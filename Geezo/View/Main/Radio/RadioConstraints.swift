//
//  RadioConstraints.swift
//  Geezo
//
//  Created by Aurocheg on 6.10.22.
//

import UIKit

class RadioConstraints: UIView {
    public func addConstraintsToRadioCollection(_ radioCollectionView: UICollectionView, view: UIView, parent: AnyObject) {
        radioCollectionView.translatesAutoresizingMaskIntoConstraints = false
        
        radioCollectionView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        radioCollectionView.topAnchor.constraint(equalTo: parent.bottomAnchor, constant: 20.0).isActive = true
        radioCollectionView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        radioCollectionView.heightAnchor.constraint(equalToConstant: 187.0).isActive = true
    }
}
