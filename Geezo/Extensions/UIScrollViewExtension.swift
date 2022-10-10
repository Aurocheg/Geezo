//
//  UIScrollViewExtension.swift
//  Geezo
//
//  Created by Aurocheg on 4.10.22.
//

import UIKit

extension UIScrollView {
    func createScrollView(height: CGFloat) -> UIScrollView {
        let scrollView = UIScrollView()
        let width = UIScreen.main.bounds.size.width
        
        scrollView.contentSize = CGSize(width: width, height: height)
        scrollView.layoutIfNeeded()
        scrollView.delaysContentTouches = false
        scrollView.isUserInteractionEnabled = true
        
        return scrollView
    }    
}
