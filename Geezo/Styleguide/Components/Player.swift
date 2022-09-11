//
//  Player.swift
//  Geezo
//
//  Created by Aurocheg on 9.09.22.
//

import Foundation
import UIKit

enum PlayerStyle {
    case bottom
    case medium
    case normal
    case large
}

enum PlayerButtonType {
    case additional
    case playPause
}

struct Player {
    static let bottomPlayerViewSizes = (width: 375, height: 72)
    static let bottomPlayerButtonSizes = (width: 32, height: 32)
    
    static let mediumPlayerViewSizes = (width: 176, height: 56)
    static let mediumPlayerButtonSizes = (width: 56, height: 56)
    
    static let normalPlayerViewSizes = (width: 200, height: 74)
    static let normalPlayerButtonSizes = (width: 73, height: 73)
    static let normalAdditionalButtonSizes = (width: 24, height: 24)

    static let largePlayerViewSizes = (width: 328, height: 74)
    static let largeAdditionalButtonSizes = (width: 32, height: 32)
}

extension Player {
    // MARK: Player Extensions
    public static func createPlayerView(type: PlayerStyle) -> UIView {
        let myView = UIView()
        
        switch type {
        case .bottom:
            myView.frame = CGRect(x: 0,
                                  y: 0,
                                  width: bottomPlayerViewSizes.width,
                                  height: bottomPlayerViewSizes.height)
            
        case .medium:
            myView.frame = CGRect(x: 0,
                                  y: 0,
                                  width: mediumPlayerViewSizes.width,
                                  height: mediumPlayerViewSizes.height)
        case .normal:
            myView.frame = CGRect(x: 0,
                                  y: 0,
                                  width: normalPlayerViewSizes.width,
                                  height: normalPlayerViewSizes.height)
        case .large:
            myView.frame = CGRect(x: 0,
                                  y: 0,
                                  width: largePlayerViewSizes.width,
                                  height: largePlayerViewSizes.height)
        }
        
        return myView
    }
    
    public static func createPlayerButton(width: Int, height: Int, image: UIImage, background: UIColor = .clear, type: PlayerButtonType) -> UIButton {
        let colorStyle = ColorStyle()
        
        let button = UIButton()
        
        button.frame = CGRect(x: 0, y: 0, width: width, height: height)
        button.setImage(image, for: .normal)
        
        switch type {
        case .additional:
            button.tintColor = background
        case .playPause:
            button.layer.borderColor = colorStyle.brand1.cgColor
            button.layer.borderWidth = 1
            button.backgroundColor = background
            button.layer.cornerRadius = 50
        }
        
        return button
    }
}
