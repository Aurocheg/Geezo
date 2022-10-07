//
//  AccountConstraints.swift
//  Geezo
//
//  Created by Aurocheg on 7.10.22.
//

import UIKit

final class AccountConstraints: UIView {
    public func addConstraintsToProfile(_ profileView: UIView, view: UIView, parent: AnyObject) {
        profileView.translatesAutoresizingMaskIntoConstraints = false
        
        profileView.topAnchor.constraint(equalTo: parent.bottomAnchor, constant: 32.0).isActive = true
        profileView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 24.0).isActive = true
        profileView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -48.0).isActive = true
        profileView.heightAnchor.constraint(equalToConstant: 84.0).isActive = true
    }
    
    public func addConstraintsToAccountImage(_ imageView: UIImageView, view: UIView) {
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        imageView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        imageView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 80.0).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 80.0).isActive = true
    }
    
    public func addConstraintsToMetrics(_ metricsView: UIView, view: UIView) {
        metricsView.translatesAutoresizingMaskIntoConstraints = false
        
        metricsView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        metricsView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        metricsView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -115.0).isActive = true
    }
    
    public func addConstraintsToMetricsCollection(_ metricsCollectionView: UICollectionView, view: UIView) {
        metricsCollectionView.translatesAutoresizingMaskIntoConstraints = false
        
        metricsCollectionView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        metricsCollectionView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        metricsCollectionView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        metricsCollectionView.heightAnchor.constraint(equalToConstant: 41.0).isActive = true
    }
    
    public func addConstraintsToEdit(_ editButton: UIButton, view: UIView, parent: AnyObject) {
        editButton.translatesAutoresizingMaskIntoConstraints = false
        
        editButton.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        editButton.topAnchor.constraint(equalTo: parent.bottomAnchor, constant: 15.0).isActive = true
        editButton.widthAnchor.constraint(equalToConstant: 78.0).isActive = true
        editButton.heightAnchor.constraint(equalToConstant: 28.0).isActive = true
    }
    
    public func addConstraintsToRecentActivityCollection(_ recentActivityCollectionView: UICollectionView, view: UIView, parent: AnyObject) {
        recentActivityCollectionView.translatesAutoresizingMaskIntoConstraints = false
        
        recentActivityCollectionView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 24.0).isActive = true
        recentActivityCollectionView.topAnchor.constraint(equalTo: parent.bottomAnchor, constant: 20.0).isActive = true
        recentActivityCollectionView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        recentActivityCollectionView.heightAnchor.constraint(equalToConstant: 196.0).isActive = true
    }
}
