//
//  RadioController.swift
//  Geezo
//
//  Created by Aurocheg on 19.09.22.
//

import UIKit

final class RadioController: UIViewController {
    private let radioView = RadioView()
    
    // MARK: - Arrays
    private let radioCollectionArray = RadioCollectionModel.getRadioCollection()
    private let popularRadioArray = RadioPopularModel.getTableCollection()
    
    // MARK: - ID
    private let radioCellID = RadioCollectionModel.cellID
    private let popularCellID = RadioPopularModel.cellID
    
    // MARK: - UI Elements
    private var radioCollectionView: UICollectionView {
        radioView.radioCollectionView
    }
    
    private var popularTableView: UITableView {
        radioView.popularTableView
    }
    
    override func loadView() {
        view = radioView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MARK: - Connections
        radioCollectionView.delegate = self
        radioCollectionView.dataSource = self
        
        popularTableView.delegate = self
        popularTableView.dataSource = self
        
        // MARK: - Register
        radioCollectionView.register(RadioCollectionCell.self, forCellWithReuseIdentifier: radioCellID)
        popularTableView.register(PopularTableCell.self, forCellReuseIdentifier: popularCellID)
    }
}

extension RadioController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        radioCollectionArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: radioCellID, for: indexPath) as? RadioCollectionCell else {
            return UICollectionViewCell()
        }
        
        cell.collectionImageView.image = UIImage(named: radioCollectionArray[indexPath.row].radioImage)
        
        return cell
    }
    
    
}

extension RadioController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        popularRadioArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: popularCellID, for: indexPath) as? PopularTableCell else {
            return UITableViewCell()
        }
        
        cell.popularImageView.image = UIImage(named: popularRadioArray[indexPath.row].popularImage)
        cell.popularTitleLabel.text = popularRadioArray[indexPath.row].popularTitle
        cell.popularTextLabel.text = popularRadioArray[indexPath.row].popularText
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80.0
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 20.0
    }
    
    
}
