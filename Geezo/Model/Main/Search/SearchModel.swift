//
//  SearchModel.swift
//  Geezo
//
//  Created by Aurocheg on 8.10.22.
//

import Foundation

// MARK: - Search History
protocol SearchHistoryProtocol {
    var text: String { get set }
}

struct SearchHistoryModel: SearchHistoryProtocol {
    var text: String
    static let cellID = "searchHistoryCell"
    
    static func getSearchHistory() -> [SearchHistoryModel] {
        let history = [
            SearchHistoryModel(text: "Fall out boy"),
            SearchHistoryModel(text: "Good girl"),
            SearchHistoryModel(text: "Imagine Dragons")
        ]
        return history
    }
}

// MARK: - Top Searching
protocol SearchTopSearchingProtocol {
    var text: String { get set }
}

struct SearchTopSearchingModel: SearchTopSearchingProtocol {
    var text: String
    static let cellID = "searchTopSearchingCell"
    
    static func getTopSearching() -> [SearchTopSearchingModel] {
        let topSearching = [
            SearchTopSearchingModel(text: "Girl generation"),
            SearchTopSearchingModel(text: "Imagine Drangon"),
        ]
        return topSearching
    }
}
