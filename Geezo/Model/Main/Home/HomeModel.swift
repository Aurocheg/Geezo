//
//  HomeModel.swift
//  Geezo
//
//  Created by Aurocheg on 28.09.22.
//

import Foundation

// MARK: - Albums
protocol HomeAlbumsProtocol {
    var albumImage: String { get set }
    var albumTitle: String { get set }
    var albumGroup: String { get set }
}

struct HomeAlbumsModel: HomeAlbumsProtocol {
    var albumImage: String
    var albumTitle: String
    var albumGroup: String
    static let cellID = "HomeAlbumsCell"
    
    static func getAlbums() -> [HomeAlbumsModel] {
        let albums = [
            HomeAlbumsModel(albumImage: "albumCollectionCell1", albumTitle: "Do it", albumGroup: "Milian Luu"),
            HomeAlbumsModel(albumImage: "albumCollectionCell2", albumTitle: "Pray For You", albumGroup: "The Weekend"),
            HomeAlbumsModel(albumImage: "albumCollectionCell3", albumTitle: "Nice For What", albumGroup: "Avinci John"),
            HomeAlbumsModel(albumImage: "albumCollectionCell4", albumTitle: "In Da Club", albumGroup: "50 cent")
        ]
        return albums
    }
}

// MARK: - Recently Music
struct HomeRecentlyTracksModel: ExploreTracksProtocol {
    var trackImage: String
    var trackTitle: String
    var trackSigner: String
    static let cellID = "HomeRecentlyTracksCell"
    
    static func getRecentlyTracks() -> [HomeRecentlyTracksModel] {
        let tracks = [
            HomeRecentlyTracksModel(trackImage: "recentlyTrack1", trackTitle: "Nice For What", trackSigner: "Avinci John"),
            HomeRecentlyTracksModel(trackImage: "recentlyTrack2", trackTitle: "Where can I get some ?", trackSigner: "Arian Grande"),
            HomeRecentlyTracksModel(trackImage: "recentlyTrack3", trackTitle: "Why do we use it ?", trackSigner: "Alan Walker "),
            HomeRecentlyTracksModel(trackImage: "recentlyTrack4", trackTitle: "Fall Out Boys", trackSigner: "Avinci John")
        ]
        return tracks
    }
}
