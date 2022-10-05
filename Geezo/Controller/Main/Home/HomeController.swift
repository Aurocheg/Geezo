//
//  HomeController.swift
//  Geezo
//
//  Created by Aurocheg on 19.09.22.
//

import UIKit

final class HomeController: UIViewController {
    private let albums = HomeAlbumsModel.getAlbums()
    private let albumsCellID = HomeAlbumsModel.cellID
    
    private let homeView = HomeView()
    private var albumsCollectionView: UICollectionView {
        homeView.albumsCollectionView
    }
    
    override func loadView() {
        view = homeView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        albumsCollectionView.delegate = self
        albumsCollectionView.dataSource = self
        
        albumsCollectionView.register(HomeAlbumsCell.self, forCellWithReuseIdentifier: albumsCellID)
    }
}

extension HomeController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        albums.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: albumsCellID, for: indexPath) as? HomeAlbumsCell else {
            return UICollectionViewCell()
        }
        
        cell.albumImageView.image = UIImage(named: albums[indexPath.row].albumImage)
        cell.albumTitleLabel.text = albums[indexPath.row].albumTitle
        cell.albumGroupLabel.text = albums[indexPath.row].albumGroup
        
        return cell
    }
    
    
}
