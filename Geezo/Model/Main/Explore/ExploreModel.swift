//
//  ExploreModel.swift
//  Geezo
//
//  Created by Aurocheg on 28.09.22.
//

import Foundation

protocol ExploreProtocol {
    var trackImage: String { get set }
    var trackTitle: String { get set }
    var trackSigner: String { get set }
}

struct ExploreModel: ExploreProtocol {
    var trackImage: String
    var trackTitle: String
    var trackSigner: String
    
    static func getTracks() -> [ExploreModel] {
        let tracks = [
            ExploreModel(trackImage: "chartTrack01", trackTitle: "Nice For What", trackSigner: "Avinci John"),
            ExploreModel(trackImage: "chartTrack02", trackTitle: "Where can I get some ?", trackSigner: "Arian Grande"),
            ExploreModel(trackImage: "chartTrack03", trackTitle: "Why do we use it ?", trackSigner: "Alan Walker"),
            ExploreModel(trackImage: "chartTrack04", trackTitle: "Pray for you", trackSigner: "Arian Grande"),
            ExploreModel(trackImage: "chartTrack05", trackTitle: "I am not her", trackSigner: "Arian Grande"),
        ]
        return tracks
    }
}

