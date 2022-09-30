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
    
    private var exploreTracksTableView: UITableView {
        get {
            exploreView.exploreTracksTableView
        }
    }
    
    private var exploreTrendingCollectionView: UICollectionView {
        get {
            exploreView.exploreTrendingsCollectionView
        }
    }

    override func loadView() {
        view = exploreView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MARK: - Connections
        exploreTracksTableView.dataSource = self
        exploreTracksTableView.delegate = self
        
        exploreTrendingCollectionView.dataSource = self
        
        // MARK: - Register
        exploreTracksTableView.register(ExploreTracksCell.self, forCellReuseIdentifier: "ExploreTracksCell")
        exploreTrendingCollectionView.register(ExploreTrendingsCell.self, forCellWithReuseIdentifier: "ExploreTrendingsCell")
    }
}

// MARK: - UITableView Extensions
extension ExploreController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        tracks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {        
        let cell = exploreTracksTableView.dequeueReusableCell(withIdentifier: "ExploreTracksCell", for: indexPath) as! ExploreTracksCell
    
        cell.trackPositionLabel.text = "0\(indexPath.row + 1)"
        cell.trackTitleLabel.text = tracks[indexPath.row].trackTitle
        cell.trackSignerLabel.text = tracks[indexPath.row].trackSigner
        cell.trackImageView.image = UIImage(named: tracks[indexPath.row].trackImage)
        
        return cell
    }
}

extension ExploreController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        60
    }
}

// MARK: - UICollectionView Extensions
extension ExploreController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        trendings.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ExploreTrendingsCell", for: indexPath) as? ExploreTrendingsCell else {
            return UICollectionViewCell()
        }
        
        cell.trendingImageView.image = UIImage(named: trendings[indexPath.row].trendingImage)
        cell.trendingSignerLabel.text = trendings[indexPath.row].trendingSigner
        cell.trendingTitleLabel.text = trendings[indexPath.row].trendingTitle
        
        return cell
    }
}
