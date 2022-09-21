//
//  HomeConstraints.swift
//  Geezo
//
//  Created by Aurocheg on 20.09.22.
//

import UIKit

class HomeConstraints: UIView {
    public func addConstraintsToSearch(_ searchButton: UIButton, view: UIView) {
        searchButton.translatesAutoresizingMaskIntoConstraints = false
        
        searchButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -24.0).isActive = true
        searchButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 84.0).isActive = true
        searchButton.widthAnchor.constraint(equalToConstant: 24.0).isActive = true
        searchButton.heightAnchor.constraint(equalToConstant: 24.0).isActive = true
    }
    
    public func addConstraintsToNewAlbums(_ newAlbumsLabel: UILabel, view: UIView, parent: UILabel) {
        newAlbumsLabel.translatesAutoresizingMaskIntoConstraints = false
        
        newAlbumsLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 24.0).isActive = true
        newAlbumsLabel.topAnchor.constraint(equalTo: parent.bottomAnchor, constant: 32.0).isActive = true
        newAlbumsLabel.widthAnchor.constraint(equalToConstant: 125.0).isActive = true
        newAlbumsLabel.heightAnchor.constraint(equalToConstant: 26.0).isActive = true
    }
    
    public func addConstraintsToViewAll(_ viewAllButton: UIButton, view: UIView, parent: UIButton) {
        viewAllButton.translatesAutoresizingMaskIntoConstraints = false
        
        viewAllButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -24.0).isActive = true
        viewAllButton.topAnchor.constraint(equalTo: parent.bottomAnchor, constant: 56.0).isActive = true
        viewAllButton.widthAnchor.constraint(equalToConstant: 43.0).isActive = true
        viewAllButton.heightAnchor.constraint(equalToConstant: 14.0).isActive = true
    }
}
