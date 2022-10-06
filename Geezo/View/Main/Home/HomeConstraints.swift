//
//  HomeConstraints.swift
//  Geezo
//
//  Created by Aurocheg on 20.09.22.
//

import UIKit

enum WeeklyTime {
    case min
    case max
}

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
    
    public func addConstraintsToWeeklyImage(_ imageView: UIImageView, view: UIView) {
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        imageView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        imageView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        imageView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        imageView.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
    }
    
    public func addConstraintsToWeeklyTitle(_ weeklyTitleLabel: UILabel, view: UIView) {
        weeklyTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        weeklyTitleLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20.0).isActive = true
        weeklyTitleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 16.0).isActive = true
        weeklyTitleLabel.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -40.0).isActive = true
        weeklyTitleLabel.heightAnchor.constraint(equalToConstant: 19.0).isActive = true
    }
    
    public func addConstraintsToWeeklyGroup(_ weeklyGroupLabel: UILabel, view: UIView, parent: AnyObject) {
        weeklyGroupLabel.translatesAutoresizingMaskIntoConstraints = false
        
        weeklyGroupLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20.0).isActive = true
        weeklyGroupLabel.topAnchor.constraint(equalTo: parent.bottomAnchor, constant: 5.0).isActive = true
        weeklyGroupLabel.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -40.0).isActive = true
        weeklyGroupLabel.heightAnchor.constraint(equalToConstant: 14.0).isActive = true
    }
    
    public func addConstraintsToWeeklySliderView(_ weeklySliderView: UIView, view: UIView) {
        weeklySliderView.translatesAutoresizingMaskIntoConstraints = false
        
        weeklySliderView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20.0).isActive = true
        weeklySliderView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -15.0).isActive = true
        weeklySliderView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -40.0).isActive = true
        weeklySliderView.heightAnchor.constraint(equalToConstant: 26.0).isActive = true
    }
    
    public func addConstraintsToWeeklySlider(_ weeklySlider: UISlider, sliderView: UIView) {
        weeklySlider.translatesAutoresizingMaskIntoConstraints = false
        
        weeklySlider.leftAnchor.constraint(equalTo: sliderView.leftAnchor).isActive = true
        weeklySlider.topAnchor.constraint(equalTo: sliderView.topAnchor).isActive = true
        weeklySlider.widthAnchor.constraint(equalTo: sliderView.widthAnchor).isActive = true
        weeklySlider.heightAnchor.constraint(equalToConstant: 1.0).isActive = true
    }
    
    public func addConstraintsToTimeLabel(_ timeLabel: UILabel, sliderView: UIView, type: WeeklyTime) {
        timeLabel.translatesAutoresizingMaskIntoConstraints = false
        
        timeLabel.topAnchor.constraint(equalTo: sliderView.topAnchor, constant: 5.0).isActive = true
        timeLabel.widthAnchor.constraint(equalToConstant: 35.0).isActive = true
        timeLabel.heightAnchor.constraint(equalToConstant: 16.0).isActive = true
        
        switch type {
        case .min:
            timeLabel.leftAnchor.constraint(equalTo: sliderView.leftAnchor).isActive = true
        case .max:
            timeLabel.rightAnchor.constraint(equalTo: sliderView.rightAnchor).isActive = true
        }
    }
    
    public func addConstraintsToWeeklyPlay(_ weeklyPlayButton: UIButton, view: UIView) {
        weeklyPlayButton.translatesAutoresizingMaskIntoConstraints = false
        
        weeklyPlayButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        weeklyPlayButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        weeklyPlayButton.widthAnchor.constraint(equalToConstant: 49.0).isActive = true
        weeklyPlayButton.heightAnchor.constraint(equalToConstant: 49.0).isActive = true
    }
    
    public func addConstraintsToRecentlyTracks(_ recentlyTracksTableView: UITableView, view: UIView, parent: AnyObject) {
        recentlyTracksTableView.translatesAutoresizingMaskIntoConstraints = false
        
        recentlyTracksTableView.topAnchor.constraint(equalTo: parent.bottomAnchor, constant: 15.0).isActive = true
        recentlyTracksTableView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 24.0).isActive = true
        recentlyTracksTableView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -48.0).isActive = true
        recentlyTracksTableView.heightAnchor.constraint(equalToConstant: 208.0).isActive = true
    }
}
