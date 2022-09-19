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
    case social
}

struct Button {
    public let buttonFont = "Roboto"
    public let startButtonSizes = (width: 295, height: 45)
    public let okCancelButtonsSizes = (width: 94, height: 32)
    public let addNewPlaylistButtonSizes = (width: 150, height: 40)
    public let followButtonSizes = (width: 96, height: 28)
    public let labelButtonSizes = (width: 85, height: 28)
    public let addSongButtonSizes = (width: 264, height: 34)
    public let socialButtonSizes = (width: 40, height: 40)
}

extension Button {
    public func createButton(type: ButtonType, background: Bool = true, border: Bool = false, text: String = "", image: UIImage? = nil) -> UIButton {
        let button = UIButton()

        let colorStyle = ColorStyle()
                
        button.layer.cornerRadius = 4
        
        button.setTitle(text, for: .normal)
        button.setTitleColor(colorStyle.brand1, for: .normal)
        button.titleLabel?.font = UIFont(name: buttonFont + "-" + "Regular", size: 14.0)
        
        // If we need background for button
        if background {
            button.backgroundColor = colorStyle.brand2
        } else {
            button.setTitleColor(colorStyle.brand2, for: .normal)
        }
        
        // If we need borders for button
        if border {
            button.layer.borderColor = colorStyle.brand2.cgColor
            button.layer.borderWidth = 1
        }
        
        switch type {
        case .start:
            button.frame = CGRect(x: 0, y: 0, width: startButtonSizes.width, height: startButtonSizes.height)
            button.titleLabel?.font = UIFont(name: buttonFont + "-" + "Bold", size: 16.0)
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
        case .social:
            button.frame = CGRect(x: 0, y: 0, width: socialButtonSizes.width, height: socialButtonSizes.height)
            if let myImage = image {
                button.setBackgroundImage(myImage, for: .normal)
            }
        }
        
        return button
    }
}
