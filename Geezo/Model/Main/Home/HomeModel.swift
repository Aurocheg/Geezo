//
//  HomeModel.swift
//  Geezo
//
//  Created by Aurocheg on 28.09.22.
//

import Foundation

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
            HomeAlbumsModel(albumImage: "albumCollectionCell3", albumTitle: "Nice For What", albumGroup: "Avinci John")
        ]
        return albums
    }
}
