//
//  UICollectionViewExtension.swift
//  Geezo
//
//  Created by Aurocheg on 4.10.22.
//

import Foundation
import UIKit

extension UICollectionView {
    func createCollectionView(itemSize: CGSize, spacing: CGFloat, backgroundColor: UIColor) -> UICollectionView {
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = itemSize
        layout.minimumLineSpacing = spacing
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = backgroundColor
        
        return collectionView
    }
}
