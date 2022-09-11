//
//  Switch.swift
//  Geezo
//
//  Created by Aurocheg on 9.09.22.
//

import Foundation
import UIKit

struct Switch {
    static let switchSizes = (width: 32, height: 17)
}

extension Switch {
    public static func createSwitch() -> UISwitch {
        let colorStyle = ColorStyle()
        
        let mySwitch = UISwitch()
        mySwitch.frame = CGRect(x: 0, y: 0, width: switchSizes.width, height: switchSizes.height)
        mySwitch.onTintColor = colorStyle.brand2
        mySwitch.thumbTintColor = colorStyle.neutral1
        
        return mySwitch
    }
}
