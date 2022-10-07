//
//  AccountController.swift
//  Geezo
//
//  Created by Aurocheg on 19.09.22.
//

import UIKit

final class AccountController: UIViewController {
    // MARK: - Metrics Model Init
    private let metrics = AccountMetricsModel.getMetrics()
    private let metricsCellID = AccountMetricsModel.cellID
    
    // MARK: - Library Model Init
    private let library = AccountLibraryModel.getLibrary()
    private let libraryCellID = AccountLibraryModel.cellID
    
    // MARK: - Recent Activity Model Init
    private let recentActivity = AccountRecentActivityModel.getRecentActivity()
    private let recentActivityCellID = AccountRecentActivityModel.cellID
    
    private let accountView = AccountView()
    
    // MARK: - UI Elements
    private var metricsCollectionView: UICollectionView {
        accountView.metricsCollectionView
    }
    
    private var libraryTableView: UITableView {
        accountView.libraryTableView
    }
    
    private var recentActivityCollectionView: UICollectionView {
        accountView.recentActivityCollectionView
    }
    
    override func loadView() {
        view = accountView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MARK: - Connections
        metricsCollectionView.delegate = self
        metricsCollectionView.dataSource = self
        
        libraryTableView.delegate = self
        libraryTableView.dataSource = self
        
        recentActivityCollectionView.delegate = self
        recentActivityCollectionView.dataSource = self
        
        // MARK: - Register
        metricsCollectionView.register(MetricsCollectionCell.self, forCellWithReuseIdentifier: metricsCellID)
        libraryTableView.register(LibraryTableCell.self, forCellReuseIdentifier: libraryCellID)
        recentActivityCollectionView.register(RecentActivityCollectionCell.self, forCellWithReuseIdentifier: recentActivityCellID)
    }
}

extension AccountController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch collectionView {
        case metricsCollectionView:
            return metrics.count
        case recentActivityCollectionView:
            return recentActivity.count
        default:
            return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch collectionView {
        case metricsCollectionView:
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: metricsCellID, for: indexPath) as? MetricsCollectionCell else {
                return UICollectionViewCell()
            }
            
            cell.numberLabel.text = metrics[indexPath.row].number
            cell.textLabel.text = metrics[indexPath.row].text
            
            return cell
        case recentActivityCollectionView:
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: recentActivityCellID, for: indexPath) as? RecentActivityCollectionCell else {
                return UICollectionViewCell()
            }
            
            let currentRecentActivity = recentActivity[indexPath.row]
            
            if let image = UIImage(named: currentRecentActivity.image) {
                cell.recentImageView.image = image
            }
            
            return cell
        default:
            return UICollectionViewCell()
        }
    }
}

extension AccountController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        library.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: libraryCellID, for: indexPath) as? LibraryTableCell else {
            return UITableViewCell()
        }
        
        let currentLibrary = library[indexPath.row]
        
        if let image = UIImage(named: currentLibrary.image) {
            cell.libraryImageView.image = image
        }
        
        cell.libraryTitleLabel.text = currentLibrary.text
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        52.0
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        30.0
    }
    
}
