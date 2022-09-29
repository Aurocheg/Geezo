//
//  ExploreModel.swift
//  Geezo
//
//  Created by Aurocheg on 28.09.22.
//

import Foundation

// MARK: - Tracks
protocol ExploreTracksProtocol {
    var trackImage: String { get set }
    var trackTitle: String { get set }
    var trackSigner: String { get set }
}

struct ExploreTracksModel: ExploreTracksProtocol {
    var trackImage: String
    var trackTitle: String
    var trackSigner: String
    
    static func getTracks() -> [ExploreTracksModel] {
        let tracks = [
            ExploreTracksModel(trackImage: "chartTrack01", trackTitle: "Nice For What", trackSigner: "Avinci John"),
            ExploreTracksModel(trackImage: "chartTrack02", trackTitle: "Where can I get some ?", trackSigner: "Arian Grande"),
            ExploreTracksModel(trackImage: "chartTrack03", trackTitle: "Why do we use it ?", trackSigner: "Alan Walker"),
            ExploreTracksModel(trackImage: "chartTrack04", trackTitle: "Pray for you", trackSigner: "Arian Grande"),
            ExploreTracksModel(trackImage: "chartTrack05", trackTitle: "I am not her", trackSigner: "Arian Grande")
        ]
        return tracks
    }
}

// MARK: - Trendings
protocol ExploreTrendingsProtocol {
    var trendingImage: String { get set }
    var trendingTitle: String { get set }
    var trendingSigner: String { get set }
}

struct ExploreTrendingsModel: ExploreTrendingsProtocol {
    var trendingImage: String
    var trendingTitle: String
    var trendingSigner: String
    
    static func getTrendings() -> [ExploreTrendingsModel] {
        let trendings = [
            ExploreTrendingsModel(trendingImage: "trendingCollectionImage", trendingTitle: "Do it", trendingSigner: "Milian Luu"),
            ExploreTrendingsModel(trendingImage: "trendingCollectionImage", trendingTitle: "Do it", trendingSigner: "Milian Luu"),
            ExploreTrendingsModel(trendingImage: "trendingCollectionImage", trendingTitle: "Do it", trendingSigner: "Milian Luu"),
        ]
        return trendings
    }
}
