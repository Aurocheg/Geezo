//
//  RadioModel.swift
//  Geezo
//
//  Created by Aurocheg on 28.09.22.
//

import Foundation

// MARK: - Radio Collection Model
protocol RadioCollectionProtocol {
    var radioImage: String { get set }
}

struct RadioCollectionModel: RadioCollectionProtocol {
    var radioImage: String
    static let cellID = "radioCollectionCell"
    
    static func getRadioCollection() -> [RadioCollectionModel] {
        let radioCollection = [
            RadioCollectionModel(radioImage: "radioCollection1"),
            RadioCollectionModel(radioImage: "radioCollection2"),
            RadioCollectionModel(radioImage: "radioCollection3"),
        ]
        
        return radioCollection
    }
}

// MARK: - Radio Table Model
protocol RadioPopularProtocol {
    var popularImage: String { get set }
    var popularTitle: String { get set }
    var popularText: String { get set }
}

struct RadioPopularModel: RadioPopularProtocol {
    var popularImage: String
    var popularTitle: String
    var popularText: String
    static let cellID = "radioTableCell"
    
    static func getTableCollection() -> [RadioPopularModel] {
        let popularRadio = [
            RadioPopularModel(popularImage: "radioTable1", popularTitle: "Geez Radio Weekly", popularText: "Collection of the best Radio stations of RLING, constantly updated weekly."),
            RadioPopularModel(popularImage: "radioTable2", popularTitle: "Live peep show", popularText: "Collection of the best Radio stations of RLING, constantly updated weekly."),
            RadioPopularModel(popularImage: "radioTable3", popularTitle: "Live peep show", popularText: "Collection of the best Radio stations of RLING, constantly updated weekly.")
        ]
        
        return popularRadio
    }
}
