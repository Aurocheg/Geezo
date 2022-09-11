//
//  EffectsStyle.swift
//  Geezo
//
//  Created by Aurocheg on 7.09.22.
//

import Foundation
import UIKit

public struct EffectsStyle {
    // MARK: Small Shadow
    static let smallShadowColor = UIColor(red: 0.663, green: 0.663, blue: 0.663, alpha: 0.3)
    static let smallShadowOpacity: Float = 0.3
    static let smallShadowOffset = CGSize(width: 2.0, height: 2.0)
    static let smallShadowRadius = 3.0
    
    // MARK: Green Shadow
    static let greenShadowColor = UIColor(red: 0.796, green: 0.984, blue: 0.369, alpha: 1)
    static let greenShadowRadius = 5.0
    
    // MARK: Medium shadow
    static let mediumShadowColor = UIColor(red: 0.18, green: 0.357, blue: 0.346, alpha: 0.5)
    static let mediumShadowOffset = CGSize(width: 0.0, height: 4.0)
    static let mediumShadowRadius = 5.0
    
    // MARK: Big Shadow
    static let bigShadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.4)
    static let bigShadowOffset = CGSize(width: 0, height: -10)
    static let bigShadowRadius = 15.0
}

extension EffectsStyle {
    public static func addShadow(shadowColor: UIColor, shadowOpacity: Float = 1.0, shadowOffset: CGSize = CGSize(width: 0, height: 0), shadowRadius: CGFloat = 1.0) -> UIView {
        let myView = UIView()
        myView.layer.shadowColor = shadowColor.cgColor
        myView.layer.shadowOpacity = shadowOpacity
        myView.layer.shadowOffset = shadowOffset
        myView.layer.shadowRadius = shadowRadius
        
        return myView
    }
}
