//
//  ExploreController.swift
//  Geezo
//
//  Created by Aurocheg on 19.09.22.
//

import UIKit

final class ExploreController: UIViewController {
    private let exploreView = ExploreView()
    private let tracks = ExploreModel.getTracks()
    private var tableView: UITableView {
        get {
            exploreView.tableView
        }
    }

    override func loadView() {
        view = exploreView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MARK: - Table View Connections
        tableView.delegate = self
        tableView.dataSource = self
        
        // MARK: - Register Table View Cell
        tableView.register(ExploreTracksCell.self, forCellReuseIdentifier: "ExploreTracksCell")
    }
}

extension ExploreController: UITableViewDelegate {
    
}

extension ExploreController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        tracks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {        
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "ExploreTracksCell", for: indexPath) as! ExploreTracksCell
    
        cell.trackPositionLabel.text = "0\(indexPath.row + 1)"
        cell.trackTitleLabel.text = tracks[indexPath.row].trackTitle
        cell.trackSignerLabel.text = tracks[indexPath.row].trackSigner
        cell.trackImageView.image = UIImage(named: tracks[indexPath.row].trackImage)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        CGFloat(65)
    }
}
