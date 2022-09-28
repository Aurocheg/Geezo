//
//  VerifyDoneConstraints.swift
//  Geezo
//
//  Created by Aurocheg on 18.09.22.
//

import UIKit

final class VerifyDoneConstraints: UIView {
    public func addConstraintsToMainTitle(_ mainTitleLabel: UILabel, view: UIView) {
        mainTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        mainTitleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0.0).isActive = true
        mainTitleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 230.0).isActive = true
        mainTitleLabel.widthAnchor.constraint(equalToConstant: 170.0).isActive = true
        mainTitleLabel.heightAnchor.constraint(equalToConstant: 33.0).isActive = true
    }
}
