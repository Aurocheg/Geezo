//
//  FontStyle.swift
//  Geezo
//
//  Created by Aurocheg on 11.09.22.
//

import Foundation
import UIKit

// Adding possibility to add a custom weight for font
extension UIFont {
    func withWeight(_ weight: UIFont.Weight) -> UIFont {
        let newDescriptor = fontDescriptor.addingAttributes([.traits: [
            UIFontDescriptor.TraitKey.weight: weight]
        ])
        return UIFont(descriptor: newDescriptor, size: pointSize)
    }
}
