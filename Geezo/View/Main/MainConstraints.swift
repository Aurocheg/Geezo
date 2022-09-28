//
//  MainConstraints.swift
//  Geezo
//
//  Created by Aurocheg on 23.09.22.
//

import UIKit

final class MainConstraints: UIView {
    public func addConstraintsToSearch(_ searchButton: UIButton, view: UIView) {
        searchButton.translatesAutoresizingMaskIntoConstraints = false
        
        searchButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -24.0).isActive = true
        searchButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 84.0).isActive = true
        searchButton.widthAnchor.constraint(equalToConstant: 24.0).isActive = true
        searchButton.heightAnchor.constraint(equalToConstant: 24.0).isActive = true
    }
    
    public func addConstraintsToLeftSubtitle(_ subtitleLabel: UILabel, view: UIView, parent: AnyObject, width: CGFloat, height: CGFloat) {
        subtitleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        subtitleLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 24.0).isActive = true
        subtitleLabel.topAnchor.constraint(equalTo: parent.bottomAnchor, constant: 32.0).isActive = true
        subtitleLabel.widthAnchor.constraint(equalToConstant: 125.0).isActive = true
        subtitleLabel.heightAnchor.constraint(equalToConstant: 26.0).isActive = true
    }
    
    public func addConstraintsToViewAll(_ viewAllButton: UIButton, view: UIView, parent: UIButton) {
        viewAllButton.translatesAutoresizingMaskIntoConstraints = false
        
        viewAllButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -24.0).isActive = true
        viewAllButton.topAnchor.constraint(equalTo: parent.bottomAnchor, constant: 56.0).isActive = true
        viewAllButton.widthAnchor.constraint(equalToConstant: 43.0).isActive = true
        viewAllButton.heightAnchor.constraint(equalToConstant: 14.0).isActive = true
    }
}
