//
//  HomeController.swift
//  Geezo
//
//  Created by Aurocheg on 19.09.22.
//

import UIKit

final class HomeController: UIViewController {
    // MARK: - Albums Model Init (Collection View)
    private let albums = HomeAlbumsModel.getAlbums()
    private let albumsCellID = HomeAlbumsModel.cellID
    
    // MARK: - Recently Tracks Model Init (Table View)
    private let tracks = HomeRecentlyTracksModel.getRecentlyTracks()
    private let tracksCellID = HomeRecentlyTracksModel.cellID
    
    private let homeView = HomeView()
    
    // MARK: - UI Elements
    private var albumsCollectionView: UICollectionView {
        homeView.albumsCollectionView
    }
    
    private var recentlyTracksTableView: UITableView {
        homeView.recentlyTracksTableView
    }
    
    private var searchButton: UIButton {
        homeView.searchButton
    }
    
    override func loadView() {
        view = homeView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        homeView.isUserInteractionEnabled = true
        
//        print("test")
        
        // MARK: - Connections
        albumsCollectionView.delegate = self
        albumsCollectionView.dataSource = self
        
        recentlyTracksTableView.delegate = self
        recentlyTracksTableView.dataSource = self
        
        // MARK: - Register
        albumsCollectionView.register(HomeAlbumsCell.self, forCellWithReuseIdentifier: albumsCellID)
        recentlyTracksTableView.register(HomeRecentlyTracksCell.self, forCellReuseIdentifier: tracksCellID)
        
        // MARK: - Targets
//        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(searchButtonPressed(sender:)))
//        homeView.addGestureRecognizer(tapGestureRecognizer)
        searchButton.addTarget(self, action: #selector(searchButtonPressed(sender:)), for: .touchUpInside)
    }
    
    @objc func searchButtonPressed(sender: UIView) {
        print("test")
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

extension HomeController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        tracks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: tracksCellID, for: indexPath) as? HomeRecentlyTracksCell else {
            return UITableViewCell()
        }
        
        cell.trackPositionLabel.text = "0\(indexPath.row + 1)"
        cell.trackImageView.image = UIImage(named: tracks[indexPath.row].trackImage)
        cell.trackTitleLabel.text = tracks[indexPath.row].trackTitle
        cell.trackSignerLabel.text = tracks[indexPath.row].trackSigner
        
        return cell
    }
    
    
}
