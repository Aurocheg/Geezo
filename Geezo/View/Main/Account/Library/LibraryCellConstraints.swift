//
//  LibraryConstraints.swift
//  Geezo
//
//  Created by Aurocheg on 7.10.22.
//

import UIKit

final class LibraryCellConstraints: UIView {
    public func addConstraintsToImage(_ libraryImageView: UIImageView, view: UITableViewCell) {
        libraryImageView.translatesAutoresizingMaskIntoConstraints = false
        
        libraryImageView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        libraryImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        libraryImageView.widthAnchor.constraint(equalToConstant: 24.0).isActive = true
        libraryImageView.heightAnchor.constraint(equalToConstant: 24.0).isActive = true
    }
    
    public func addConstraintsToTitle(_ libraryTitleLabel: UILabel, view: UITableViewCell, parent: AnyObject) {
        libraryTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        libraryTitleLabel.leftAnchor.constraint(equalTo: parent.rightAnchor, constant: 20.0).isActive = true
        libraryTitleLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        libraryTitleLabel.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -68.0).isActive = true
        libraryTitleLabel.heightAnchor.constraint(equalToConstant: 16.0).isActive = true
    }
}
