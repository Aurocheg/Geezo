//
//  ExploreConstraints.swift
//  Geezo
//
//  Created by Aurocheg on 23.09.22.
//

import UIKit

final class ExploreConstraints: UIView {
    public func addConstraintsToTracksTable(_ tableView: UITableView, view: UIView, parent: AnyObject) {
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        tableView.topAnchor.constraint(equalTo: parent.bottomAnchor, constant: 20.0).isActive = true
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 24.0).isActive = true
        tableView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -48.0).isActive = true
        tableView.heightAnchor.constraint(equalToConstant: 300.0).isActive = true
    }
    
    public func addConstraintsToCollection(_ collectionView: UICollectionView, view: UIView, parent: AnyObject, heightConstant: CGFloat) {
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        
        collectionView.topAnchor.constraint(equalTo: parent.bottomAnchor, constant: 20.0).isActive = true
        collectionView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 24.0).isActive = true
        collectionView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -48.0).isActive = true
        collectionView.heightAnchor.constraint(equalToConstant: heightConstant).isActive = true
    }
    
    public func addConstraintsToPageControl(_ pageControl: UIPageControl, view: UIView, parent: AnyObject) {
        pageControl.translatesAutoresizingMaskIntoConstraints = false
        
        pageControl.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        pageControl.topAnchor.constraint(equalTo: parent.bottomAnchor, constant: 23.0).isActive = true
    }
}
