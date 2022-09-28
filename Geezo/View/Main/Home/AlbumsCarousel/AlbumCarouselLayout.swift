//
//  CarouselLayout.swift
//  Geezo
//
//  Created by Aurocheg on 22.09.22.
//

import UIKit

class AlbumCarouselLayout: UICollectionViewFlowLayout {
    // MARK: - Variables
    private let itemSpacing: CGFloat = 3
    
    override init() {
        super.init()
        
        minimumLineSpacing = 100
        minimumInteritemSpacing = 0
        scrollDirection = .horizontal
        sectionInset = .zero
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func prepare() {
        super.prepare()
        if let _ = collectionView {
            itemSize = CGSize(width: 148, height: 139)
        }
    }
    
    override func shouldInvalidateLayout(forBoundsChange newBounds: CGRect) -> Bool {
        guard itemSize != newBounds.size else {return false}
        itemSize = newBounds.size
        return true
    }
}
