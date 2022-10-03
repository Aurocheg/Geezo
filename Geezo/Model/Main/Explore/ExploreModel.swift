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
    static let cellID = "ExploreTracksCell"
    
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
    static let cellID = "ExploreTrendingsCell"
    
    static func getTrendings() -> [ExploreTrendingsModel] {
        let trendings = [
            ExploreTrendingsModel(trendingImage: "trendingCollectionImage", trendingTitle: "Do it", trendingSigner: "Milian Luu"),
            ExploreTrendingsModel(trendingImage: "trendingCollectionImage2", trendingTitle: "Do it", trendingSigner: "Milian Luu"),
            ExploreTrendingsModel(trendingImage: "trendingCollectionImage", trendingTitle: "Do it", trendingSigner: "Milian Luu"),
        ]
        return trendings
    }
}

// MARK: - Topics
protocol ExploreTopicsProtocol {
    var topicImage: String { get set }
    var topicTitle: String { get set }
}

struct ExploreTopicsModel: ExploreTopicsProtocol {
    var topicImage: String
    var topicTitle: String
    static let cellID = "ExploreTopicsCell"
    
    static func getTopics() -> [ExploreTopicsModel] {
        let topics = [
            ExploreTopicsModel(topicImage: "exploreTopic1", topicTitle: "Hip - Hop"),
            ExploreTopicsModel(topicImage: "exploreTopic2", topicTitle: "POP"),
            ExploreTopicsModel(topicImage: "exploreTopic3", topicTitle: "Jazz"),
            ExploreTopicsModel(topicImage: "exploreTopic4", topicTitle: "Dance"),
            ExploreTopicsModel(topicImage: "exploreTopic5", topicTitle: "Ballad"),
            ExploreTopicsModel(topicImage: "exploreTopic6", topicTitle: "R&B"),
        ]
        return topics
    }
}
