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
    
    public func addConstraintsToWeeklyVideo(_ weeklyVideoView: UIView, view: UIView, parent: AnyObject) {
        weeklyVideoView.translatesAutoresizingMaskIntoConstraints = false
        
        weeklyVideoView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 24.0).isActive = true
        weeklyVideoView.topAnchor.constraint(equalTo: parent.bottomAnchor, constant: 20.0).isActive = true
        weeklyVideoView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -48.0).isActive = true
        weeklyVideoView.heightAnchor.constraint(equalToConstant: 188.0).isActive = true
    }
    
    public func addConstraintsToRecentlyTracks(_ recentlyTracksTableView: UITableView, view: UIView, parent: AnyObject) {
        recentlyTracksTableView.translatesAutoresizingMaskIntoConstraints = false
        
        recentlyTracksTableView.topAnchor.constraint(equalTo: parent.bottomAnchor, constant: 20.0).isActive = true
        recentlyTracksTableView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 24.0).isActive = true
        recentlyTracksTableView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -48.0).isActive = true
        recentlyTracksTableView.heightAnchor.constraint(equalToConstant: 208.0).isActive = true
    }
}
