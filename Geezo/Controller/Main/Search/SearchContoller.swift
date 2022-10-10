//
//  SearchContoller.swift
//  Geezo
//
//  Created by Aurocheg on 8.10.22.
//

import UIKit

final class SearchContoller: UISearchController {
    // MARK: - Search History Model Init
    private let history = SearchHistoryModel.getSearchHistory()
    private let historyCellID = SearchHistoryModel.cellID
    
    // MARK: - Top Searching Model Init
    private let topSearching = SearchTopSearchingModel.getTopSearching()
    private let topSearchingCellID = SearchTopSearchingModel.cellID
    
    // MARK: UI Elements
    private let searchView = SearchView()
    
    private var historyCollectionView: UICollectionView {
        searchView.historyCollectionView
    }
    
    private var topSearchingCollectionView: UICollectionView {
        searchView.topSearchingCollectionView
    }
    
    override func loadView() {
        view = searchView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MARK: - Connections
        historyCollectionView.dataSource = self
        historyCollectionView.delegate = self
        
        topSearchingCollectionView.dataSource = self
        topSearchingCollectionView.delegate = self
        
        // MARK: - Register
        historyCollectionView.register(HistoryCollectionCell.self, forCellWithReuseIdentifier: historyCellID)
        topSearchingCollectionView.register(TopSearchingCollectionCell.self, forCellWithReuseIdentifier: topSearchingCellID)
    }
}

extension SearchContoller: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch collectionView {
        case historyCollectionView:
            return history.count
        case topSearchingCollectionView:
            return topSearching.count
        default:
            return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch collectionView {
        case historyCollectionView:
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: historyCellID, for: indexPath) as? HistoryCollectionCell else {
                return UICollectionViewCell()
            }
            
            let currentHistory = history[indexPath.row]
            cell.historyButton.setTitle(currentHistory.text, for: .normal)
            
            return cell
        case topSearchingCollectionView:
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: topSearchingCellID, for: indexPath) as? TopSearchingCollectionCell else {
                return UICollectionViewCell()
            }
            
            let currentTopSearching = topSearching[indexPath.row]
            cell.topSearchingButton.setTitle(currentTopSearching.text, for: .normal)
            
            return cell
        default:
            return UICollectionViewCell()
        }
    }
    
    
}
