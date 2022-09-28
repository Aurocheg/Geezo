//
//  UIButtonExtension.swift
//  Geezo
//
//  Created by Aurocheg on 28.09.22.
//

import Foundation
import UIKit

// MARK: - Button Settings
let buttonFont = "Roboto"
let startButtonSizes = (width: 295, height: 45)
let okCancelButtonsSizes = (width: 94, height: 32)
let addNewPlaylistButtonSizes = (width: 150, height: 40)
let followButtonSizes = (width: 96, height: 28)
let labelButtonSizes = (width: 85, height: 28)
let addSongButtonSizes = (width: 264, height: 34)
let socialButtonSizes = (width: 40, height: 40)

// MARK: - Button Enum
enum UIButtonType {
    case start
    case okCancel
    case addNewPlaylist
    case follow
    case label
    case addSong
    case social
}

extension UIButton {
    func createButton(type: UIButtonType, background: Bool = true, border: Bool = false, text: String = "", image: UIImage? = nil) -> UIButton {
        let button = UIButton()
    
        let colorStyle = ColorStyle()
                
        button.layer.cornerRadius = 4
        
        // MARK: - Button Title
        button.setTitle(text, for: .normal)
        button.setTitleColor(colorStyle.brand1, for: .normal)
        button.titleLabel?.font = UIFont(name: buttonFont + "-" + "Regular", size: 14.0)
        
        // MARK: - Background For Button
        if background {
            button.backgroundColor = colorStyle.brand2
        } else {
            button.setTitleColor(colorStyle.brand2, for: .normal)
        }
        
        // MARK: - Borders For Button
        if border {
            button.layer.borderColor = colorStyle.brand2.cgColor
            button.layer.borderWidth = 1
        }
        
        // MARK: - Button Type
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
