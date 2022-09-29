//
//  ExploreController.swift
//  Geezo
//
//  Created by Aurocheg on 19.09.22.
//

import UIKit

final class ExploreController: UIViewController {
    private let exploreView = ExploreView()
    
    private let tracks = ExploreTracksModel.getTracks()
    private let trendings = ExploreTrendingsModel.getTrendings()
    
    private var tableView: UITableView {
        get {
            exploreView.tableView
        }
    }
    private var collectionView: UICollectionView {
        get {
            exploreView.trendingCollectionView
        }
    }

    override func loadView() {
        view = exploreView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MARK: - Connections
        tableView.dataSource = self
        collectionView.dataSource = self
        
        // MARK: - Register
        tableView.register(ExploreTracksCell.self, forCellReuseIdentifier: "ExploreTracksCell")
        collectionView.register(ExploreTrendingCollectionCell.self, forCellWithReuseIdentifier: "ExploreTrendingCell")
    }
}

// MARK: - UITableView Extensions
extension ExploreController: UITableViewDelegate {
    
}


extension ExploreController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        tracks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {        
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "ExploreTracksCell", for: indexPath) as! ExploreTracksCell
    
        cell.trackPositionLabel.text = "0\(indexPath.row + 1)"
        cell.trackTitleLabel.text = tracks[indexPath.row].trackTitle
        cell.trackSignerLabel.text = tracks[indexPath.row].trackSigner
        cell.trackImageView.image = UIImage(named: tracks[indexPath.row].trackImage)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        CGFloat(65)
    }
}

// MARK: - UICollectionView Extensions
extension ExploreController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        trendings.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = self.collectionView.dequeueReusableCell(withReuseIdentifier: "ExploreTrendingCell", for: indexPath) as! ExploreTrendingCollectionCell
        
        cell.trendingImageView.image = UIImage(named: trendings[indexPath.row].trendingImage)
        cell.trendingTitleLabel.text = trendings[indexPath.row].trendingTitle
        cell.trendingSignerLabel.text = trendings[indexPath.row].trendingSigner
                
        return cell
    }
}
