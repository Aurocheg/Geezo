//
//  Button.swift
//  Geezo
//
//  Created by Aurocheg on 9.09.22.
//

import Foundation
import UIKit

enum ButtonType {
    case start
    case okCancel
    case addNewPlaylist
    case follow
    case label
    case addSong
}

struct Button {
    static let buttonFont = "Roboto"
    static let startButtonSizes = (width: 295, height: 45)
    static let okCancelButtonsSizes = (width: 94, height: 32)
    static let addNewPlaylistButtonSizes = (width: 150, height: 40)
    static let followButtonSizes = (width: 96, height: 28)
    static let labelButtonSizes = (width: 85, height: 28)
    static let addSongButtonSizes = (width: 264, height: 34)
}

extension Button {
    public static func createButton(type: ButtonType, background: Bool = true, border: Bool = false, text: String) -> UIButton {
        let colorStyle = ColorStyle()
        
        let button = UIButton()
        
        // If we need background for button
        if background {
            button.backgroundColor = colorStyle.brand2
        }
        
        // If we need borders for button
        if border {
            button.layer.borderColor = colorStyle.brand2.cgColor
            button.layer.borderWidth = 1
        }
        
        button.layer.cornerRadius = 4
        
        button.setTitle(text, for: .normal)
        button.setTitleColor(colorStyle.brand1, for: .normal)
        button.titleLabel?.font = UIFont(name: buttonFont + "-" + "Regular", size: 14.0)
        
        switch type {
        case .start:
            button.frame = CGRect(x: 0, y: 0, width: startButtonSizes.width, height: startButtonSizes.height)
            button.titleLabel?.font = UIFont(name: buttonFont + "-" + "Bold", size: 16.0)
            button.titleLabel?.text = button.titleLabel?.text?.uppercased()
        case .okCancel:
            button.frame = CGRect(x: 0, y: 0, width: okCancelButtonsSizes.width, height: okCancelButtonsSizes.height)
        case .addNewPlaylist:
            button.frame = CGRect(x: 0, y: 0, width: addNewPlaylistButtonSizes.width, height: addNewPlaylistButtonSizes.height)
        case .follow:
            button.frame = CGRect(x: 0, y: 0, width: followButtonSizes.width, height: followButtonSizes.height)
        case .label:
            button.frame = CGRect(x: 0, y: 0, width: labelButtonSizes.width, height: labelButtonSizes.height)
        case .addSong:
            button.frame = CGRect(x: 0, y: 0, width: addSongButtonSizes.width, height: addSongButtonSizes.height)
        }
        
        return button
    }
}
