//
//  AccountModel.swift
//  Geezo
//
//  Created by Aurocheg on 28.09.22.
//

import Foundation
import UIKit

// MARK: - Metrics
protocol AccountMetricsProtocol {
    var number: String { get set }
    var text: String { get set }
}

struct AccountMetricsModel: AccountMetricsProtocol {
    var number: String
    var text: String
    static let cellID = "accountMetricsCell"
    
    static func getMetrics() -> [AccountMetricsModel] {
        let metrics = [
            AccountMetricsModel(number: "22", text: "Playlist"),
            AccountMetricsModel(number: "360 K", text: "Follower"),
            AccountMetricsModel(number: "56", text: "Following")
        ]
        
        return metrics
    }
}

// MARK: - Library
protocol AccountLibraryProtocol {
    var image: String { get set }
    var text: String { get set }
    var controller: UIViewController { get set }
}

struct AccountLibraryModel: AccountLibraryProtocol {
    var image: String
    var text: String
    var controller: UIViewController
    static let cellID = "accountLibraryCell"
    
    static func getLibrary() -> [AccountLibraryModel] {
        let library = [
            AccountLibraryModel(image: "playlist", text: "My playlist", controller: UIViewController()),
            AccountLibraryModel(image: "album", text: "Album", controller: UIViewController()),
            AccountLibraryModel(image: "mv", text: "MV", controller: UIViewController()),
            AccountLibraryModel(image: "artist", text: "Artist", controller: UIViewController()),
            AccountLibraryModel(image: "download", text: "Download", controller: UIViewController())
        ]
        return library
    }
}

// MARK: - Recent Activity
protocol AccountRecentActivityProtocol {
    var image: String { get set }
    var controller: UIViewController { get set }
}

struct AccountRecentActivityModel: AccountRecentActivityProtocol {
    var image: String
    var controller: UIViewController
    static let cellID = "accountRecentActivityCell"
    
    static func getRecentActivity() -> [AccountRecentActivityModel] {
        let recentActivity = [
            AccountRecentActivityModel(image: "recentActivity1", controller: UIViewController()),
            AccountRecentActivityModel(image: "recentActivity2", controller: UIViewController()),
            AccountRecentActivityModel(image: "recentActivity3", controller: UIViewController()),
            AccountRecentActivityModel(image: "recentActivity4", controller: UIViewController()),
            AccountRecentActivityModel(image: "recentActivity5", controller: UIViewController()),
            AccountRecentActivityModel(image: "recentActivity6", controller: UIViewController()),
            AccountRecentActivityModel(image: "recentActivity7", controller: UIViewController()),
            AccountRecentActivityModel(image: "recentActivity8", controller: UIViewController()),
        ]
        return recentActivity
    }
}
