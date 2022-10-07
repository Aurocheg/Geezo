//
//  MetricsCellConstraints.swift
//  Geezo
//
//  Created by Aurocheg on 7.10.22.
//

import UIKit

final class MetricsCellConstraints: UIView {

    public func addConstraintsToNumber(_ numberLabel: UILabel, view: UICollectionViewCell) {
        numberLabel.translatesAutoresizingMaskIntoConstraints = false
        
        numberLabel.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        numberLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        numberLabel.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        numberLabel.heightAnchor.constraint(equalToConstant: 19.0).isActive = true
    }

    public func addConstraintsToText(_ textLabel: UILabel, view: UICollectionViewCell, parent: AnyObject) {
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        
        textLabel.topAnchor.constraint(equalTo: parent.bottomAnchor, constant: 5.0).isActive = true
        textLabel.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        textLabel.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        textLabel.heightAnchor.constraint(equalToConstant: 18.0).isActive = true
    }
}
