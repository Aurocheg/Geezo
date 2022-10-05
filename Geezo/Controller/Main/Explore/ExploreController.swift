//
//  ExploreController.swift
//  Geezo
//
//  Created by Aurocheg on 19.09.22.
//

import UIKit

final class ExploreController: UIViewController {
    private let exploreView = ExploreView()
    
    // MARK: - Model Init
    private let tracks = ExploreTracksModel.getTracks()
    private let tracksCellID = ExploreTracksModel.cellID
    
    private let trendings = ExploreTrendingsModel.getTrendings()
    private let trendingsCellID = ExploreTrendingsModel.cellID
    
    private let topics = ExploreTopicsModel.getTopics()
    private let topicsCellID = ExploreTopicsModel.cellID
    
    // MARK: - Elements Init
    private var tracksTableView: UITableView {
        exploreView.tracksTableView
    }
    
    private var trendingsCollectionView: UICollectionView {
        exploreView.trendingsCollectionView
    }
    
    private var trendingsPageControls: UIPageControl {
        exploreView.trendingsPageControls
    }
    
    private var topicsCollectionView: UICollectionView {
        exploreView.topicsCollectionView
    }
    
    private var topicsViewAllButton: UIButton {
        exploreView.topicViewAllButton
    }

    // MARK: - View Life Cycle
    override func loadView() {
        view = exploreView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MARK: - Connections        
        tracksTableView.dataSource = self
        tracksTableView.delegate = self
        
        trendingsCollectionView.dataSource = self
        trendingsCollectionView.delegate = self
        
        topicsCollectionView.dataSource = self
        topicsCollectionView.delegate = self
        
        // MARK: - Register
        tracksTableView.register(ExploreTracksCell.self, forCellReuseIdentifier: tracksCellID)
        trendingsCollectionView.register(ExploreTrendingsCell.self, forCellWithReuseIdentifier: trendingsCellID)
        topicsCollectionView.register(ExploreTopicsCell.self, forCellWithReuseIdentifier: topicsCellID)
        
        // MARK: - Targets
        trendingsPageControls.addTarget(self, action: #selector(trendingsPageControlTapped), for: .touchUpInside)
        topicsViewAllButton.addTarget(self, action: #selector(topicsViewAllButtonTapped), for: .touchUpInside)
    }
    
    // MARK: - @objc
    @objc func trendingsPageControlTapped() {
        let indexPath = IndexPath(item: trendingsPageControls.currentPage, section: 0)
        trendingsCollectionView.selectItem(at: indexPath, animated: true, scrollPosition: .centeredHorizontally)
    }
    
    @objc func topicsViewAllButtonTapped() {
        print("test")
        navigationController?.pushViewController(TopicsController(), animated: true)
    }
}

// MARK: - UITableView Extensions
extension ExploreController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        tracks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {        
        let cell = tracksTableView.dequeueReusableCell(withIdentifier: tracksCellID, for: indexPath) as! ExploreTracksCell
    
        cell.trackPositionLabel.text = "0\(indexPath.row + 1)"
        cell.trackTitleLabel.text = tracks[indexPath.row].trackTitle
        cell.trackSignerLabel.text = tracks[indexPath.row].trackSigner
        cell.trackImageView.image = UIImage(named: tracks[indexPath.row].trackImage)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        60
    }
}

// MARK: - UICollectionView Extensions
extension ExploreController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch collectionView {
        case trendingsCollectionView:
            return trendings.count
        case topicsCollectionView:
            return topics.count
        default:
            return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch collectionView {
        case trendingsCollectionView:
            guard let trendingsCell = collectionView.dequeueReusableCell(withReuseIdentifier: trendingsCellID, for: indexPath) as? ExploreTrendingsCell else {
                return UICollectionViewCell()
            }
            trendingsCell.trendingImageView.image = UIImage(named: trendings[indexPath.row].trendingImage)
            trendingsCell.trendingSignerLabel.text = trendings[indexPath.row].trendingSigner
            trendingsCell.trendingTitleLabel.text = trendings[indexPath.row].trendingTitle
            return trendingsCell
        case topicsCollectionView:
            guard let topicsCell = collectionView.dequeueReusableCell(withReuseIdentifier: topicsCellID, for: indexPath) as? ExploreTopicsCell else {
                return UICollectionViewCell()
            }
            topicsCell.topicsLabel.text = topics[indexPath.row].topicTitle
            topicsCell.topicsImageView.image = UIImage(named: topics[indexPath.row].topicImage)
            return topicsCell
        default:
            return UICollectionViewCell()
        }
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let scrollPosition = scrollView.contentOffset.x / scrollView.frame.width
        trendingsPageControls.currentPage = Int(scrollPosition)
    }
}
