//
//  PopularCellConstraints.swift
//  Geezo
//
//  Created by Aurocheg on 6.10.22.
//

import UIKit

final class PopularCellConstraints: UIView {
    public func addConstraintToImage(_ imageView: UIImageView, view: UITableViewCell) {
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        imageView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 70.0).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 70.0).isActive = true
    }
    
    public func addConstraintsToLabels(_ labelsView: UIView, view: UITableViewCell, imageView: UIImageView) {
        labelsView.translatesAutoresizingMaskIntoConstraints = false
        
        labelsView.topAnchor.constraint(equalTo: view.topAnchor, constant: 5.0).isActive = true
        labelsView.leftAnchor.constraint(equalTo: imageView.rightAnchor, constant: 16.0).isActive = true
        labelsView.widthAnchor.constraint(equalToConstant: 210.0).isActive = true
        labelsView.heightAnchor.constraint(equalToConstant: 100.0).isActive = true
    }
    
    public func addConstraintsToTitle(_ titleLabel: UILabel, view: UIView) {
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        titleLabel.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        titleLabel.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        titleLabel.widthAnchor.constraint(equalToConstant: 210.0).isActive = true
        titleLabel.heightAnchor.constraint(equalToConstant: 19.0).isActive = true
    }
    
    public func addConstraintsToText(_ textLabel: UILabel, view: UIView, parent: AnyObject) {
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        
        textLabel.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        textLabel.topAnchor.constraint(equalTo: parent.bottomAnchor, constant: 5.0).isActive = true
        textLabel.widthAnchor.constraint(equalToConstant: 210.0).isActive = true
        textLabel.heightAnchor.constraint(equalToConstant: 28.0).isActive = true
    }
}
