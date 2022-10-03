//
//  MainConstraints.swift
//  Geezo
//
//  Created by Aurocheg on 23.09.22.
//

import UIKit

final class MainConstraints: UIView {
    public func addConstraintsToScroll(_ scrollView: UIScrollView, view: UIView) {
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        
        scrollView.topAnchor.constraint(equalTo: view.topAnchor, constant: 44.0).isActive = true
        scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
    
    public func addConstraintsToSearch(_ searchButton: UIButton, view: UIView, topConstant: CGFloat, rightConstant: CGFloat) {
        searchButton.translatesAutoresizingMaskIntoConstraints = false
        
        searchButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: rightConstant).isActive = true
        searchButton.topAnchor.constraint(equalTo: view.topAnchor, constant: topConstant).isActive = true
        searchButton.widthAnchor.constraint(equalToConstant: 24.0).isActive = true
        searchButton.heightAnchor.constraint(equalToConstant: 24.0).isActive = true
    }
    
    public func addConstraintsToLeftSubtitle(_ subtitleLabel: UILabel, view: UIView, parent: AnyObject, width: CGFloat, height: CGFloat, topConstant: CGFloat) {
        subtitleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        subtitleLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 24.0).isActive = true
        subtitleLabel.topAnchor.constraint(equalTo: parent.bottomAnchor, constant: topConstant).isActive = true
        subtitleLabel.widthAnchor.constraint(equalToConstant: width).isActive = true
        subtitleLabel.heightAnchor.constraint(equalToConstant: height).isActive = true
    }
    
    public func addConstraintsToViewAll(_ viewAllButton: UIButton, view: UIView, parent: AnyObject, topConstant: CGFloat) {
        viewAllButton.translatesAutoresizingMaskIntoConstraints = false
        
        viewAllButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -24.0).isActive = true
        viewAllButton.topAnchor.constraint(equalTo: parent.bottomAnchor, constant: topConstant).isActive = true
        viewAllButton.widthAnchor.constraint(equalToConstant: 43.0).isActive = true
        viewAllButton.heightAnchor.constraint(equalToConstant: 14.0).isActive = true
    }
}
