//
//  VerifyCodeConstraints.swift
//  Geezo
//
//  Created by Aurocheg on 18.09.22.
//

import UIKit

class VerifyCodeConstraints: UIView {
    public func addConstraintsToCode(_ codeView: UIView, view: UIView, parent: UILabel) {
        codeView.translatesAutoresizingMaskIntoConstraints = false
        
        codeView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        codeView.topAnchor.constraint(equalTo: parent.bottomAnchor, constant: 128.0).isActive = true
        codeView.widthAnchor.constraint(equalToConstant: 268.0).isActive = true
        codeView.heightAnchor.constraint(equalToConstant: 3.0).isActive = true
    }
}
