//
//  HomeConstraints.swift
//  Geezo
//
//  Created by Aurocheg on 20.09.22.
//

import UIKit

final class HomeConstraints: UIView {        
    public func addConstraintsToAlbums(_ albumsView: UIView, view: UIView, parent: AnyObject) {
        albumsView.translatesAutoresizingMaskIntoConstraints = false
        
        albumsView.topAnchor.constraint(equalTo: parent.bottomAnchor, constant: 20.0).isActive = true
        albumsView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        albumsView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        albumsView.heightAnchor.constraint(equalToConstant: 200.0).isActive = true
    }
}
