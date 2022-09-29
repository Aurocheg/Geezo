//
//  ExploreTracksConstraints.swift
//  Geezo
//
//  Created by Aurocheg on 28.09.22.
//

import UIKit

final class ExploreTracksCellConstraints: UIView {
    public func addConstraintsToTrackPosition(_ trackPositionLabel: UILabel, view: UITableViewCell) {
        trackPositionLabel.translatesAutoresizingMaskIntoConstraints = false
        
        trackPositionLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 12.0).isActive = true
        trackPositionLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 24.0).isActive = true
        trackPositionLabel.widthAnchor.constraint(equalToConstant: 16.0).isActive = true
        trackPositionLabel.heightAnchor.constraint(equalToConstant: 18.0).isActive = true
    }
    
    public func addConstraintsToTrackImage(_ imageView: UIImageView, view: UITableViewCell, parent: AnyObject) {
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        imageView.leftAnchor.constraint(equalTo: parent.rightAnchor, constant: 20.0).isActive = true
        imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 16.0).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 32.0).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 32.0).isActive = true
    }
    
    public func addConstraintsToTrackTitle(_ trackTitleLabel: UILabel, view: UITableViewCell, parent: AnyObject) {
        trackTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        trackTitleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 14.0).isActive = true
        trackTitleLabel.leftAnchor.constraint(equalTo: parent.rightAnchor, constant: 16.0).isActive = true
        trackTitleLabel.widthAnchor.constraint(equalToConstant: 210.0).isActive = true
        trackTitleLabel.heightAnchor.constraint(equalToConstant: 19.0).isActive = true
    }
    
    public func addConstraintsToTrackSigner(_ trackSignerLabel: UILabel, parent: AnyObject, imageView: UIImageView) {
        trackSignerLabel.translatesAutoresizingMaskIntoConstraints = false
        
        trackSignerLabel.topAnchor.constraint(equalTo: parent.bottomAnchor, constant: 5.0).isActive = true
        trackSignerLabel.leftAnchor.constraint(equalTo: imageView.rightAnchor, constant: 16.0).isActive = true
        trackSignerLabel.widthAnchor.constraint(equalToConstant: 210.0).isActive = true
        trackSignerLabel.heightAnchor.constraint(equalToConstant: 14.0).isActive = true
    }
    
    public func addConstraintsToTrackSettings(_ trackSettingsButton: UIButton, view: UITableViewCell) {
        trackSettingsButton.translatesAutoresizingMaskIntoConstraints = false
        
        trackSettingsButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -12.0).isActive = true
        trackSettingsButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        trackSettingsButton.widthAnchor.constraint(equalToConstant: 24.0).isActive = true
        trackSettingsButton.heightAnchor.constraint(equalToConstant: 24.0).isActive = true
    }
}
