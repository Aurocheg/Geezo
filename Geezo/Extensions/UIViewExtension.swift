//
//  UIViewExtension.swift
//  Geezo
//
//  Created by Aurocheg on 4.10.22.
//

import UIKit

extension UIView {
    func createContentView(height: CGFloat) -> UIView {
        let view = UIView()
        let width = UIScreen.main.bounds.width
        
        view.frame.size = CGSize(width: width, height: height)
        view.layoutIfNeeded()
        view.isUserInteractionEnabled = true
        
        return view
    }
}
