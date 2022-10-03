//
//  Carousel.swift
//  Geezo
//
//  Created by Aurocheg on 22.09.22.
//

import UIKit

class AlbumCarousel: UIView {
    // MARK: - Constraints
    let albumConstraints = AlbumConstraints()
    
    // MARK: - UI Elements
    private lazy var collectionView = UICollectionView(frame: .zero, collectionViewLayout: AlbumCarouselLayout())
    
    // MARK: - Variables
    var albumImages: [UIImage] = []
    var selectedIndex = 0

    public init(frame: CGRect, albumImages: [UIImage]) {
        self.albumImages = albumImages
        super.init(frame: frame)
        
        initView()
        initConstraints()
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        initView()
        initConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func initView() {
        selectedIndex = albumImages.count / 2
        collectionView.backgroundColor = .clear
        collectionView.dataSource = self
        collectionView.isUserInteractionEnabled = true
        collectionView.showsHorizontalScrollIndicator = false
        addSubview(collectionView)
        
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "albumCell")
    }
    
    private func initConstraints() {
        albumConstraints.addConstraintsToCollection(collectionView, parent: self)
    }
    
    private func selectNext() {
        selectItem(at: selectedIndex + 1)
    }
    
    private func selectItem(at index: Int) {
        let index = albumImages.count > index ? index : 0
        guard selectedIndex != index else {return}
        selectedIndex = index
        collectionView.scrollToItem(at: IndexPath(item: selectedIndex, section: 0), at: .left, animated: true)
    }
}

extension AlbumCarousel: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return albumImages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "albumCell", for: indexPath)
        let imageView: UIImageView = UIImageView(frame: .zero)
        imageView.contentMode = .center
        
        let currentImage = albumImages[indexPath.row]
        imageView.image = currentImage
        cell.contentView.addSubview(imageView)
        
        albumConstraints.addConstraintsToImage(imageView, cell: cell)
        
        return cell
    }
}
