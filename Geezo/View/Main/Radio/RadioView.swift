//
//  RadioView.swift
//  Geezo
//
//  Created by Aurocheg on 19.09.22.
//

import UIKit

class RadioView: UIView {
    private let colorStyle = ColorStyle()
    
    // MARK: - Init Constraints
    private let radioConstraints = RadioConstraints()
    private let mainConstraints = MainConstraints()
    private let commonConstraints = CommonConstraints()
    
    // MARK: - Init UI Elements
    private let mainTitleLabel: UILabel = {
        let label = UILabel()
        return label.createLabel(font: "Roboto-Bold", size: 48.0, color: .white, text: "Radio")
    }()
    
    private let radioWeeklyLabel: UILabel = {
        let label = UILabel()
        return label.createLabel(font: "Roboto-Bold", size: 22.0, color: .white, text: "Geez Radio Weekly")
    }()
    
    private let radioWeeklyTextLabel: UILabel = {
        let label = UILabel()
        return label.createLabel(font: "Roboto-Regular", size: 14.0, color: ColorStyle().neutral2, text: "Geez Radio Weekly")
    }()
    
    public let radioCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 16.0
        layout.itemSize = CGSize(width: 273, height: 187)
        layout.scrollDirection = .horizontal
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.backgroundColor = .clear
        
        return collectionView
    }()
    
    private let popularLabel: UILabel = {
        let label = UILabel()
        return label.createLabel(font: "Roboto-Bold", size: 22.0, color: .white, text: "Popular")
    }()
    
    public let popularTableView: UITableView = {
        let tableView = UITableView()
        
        tableView.separatorStyle = .none
        
        return tableView
    }()
    
    // MARK: - Init Method
    init() {
        super.init(frame: .zero)
    
        initViews()
        initConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Init Views Method
    private func initViews() {
        backgroundColor = colorStyle.brand1
        
        addSubview(mainTitleLabel)
        addSubview(radioWeeklyLabel)
        addSubview(radioWeeklyTextLabel)
        addSubview(radioCollectionView)
        addSubview(popularLabel)
        addSubview(popularTableView)
    }
    
    // MARK: - Constraints Method
    private func initConstraints() {
        commonConstraints.addConstraintsToMainTitle(mainTitleLabel, view: self, leftConstant: 24.0, topConstant: 80.0, widthConstant: 124.0, heightConstant: 56.0)
        mainConstraints.addConstraintsToLeftSubtitle(radioWeeklyLabel, view: self, parent: mainTitleLabel, width: 189.0, height: 26.0, topConstant: 32.0)
        commonConstraints.addConstraintsToText(radioWeeklyTextLabel, view: self, parent: radioWeeklyLabel, leftConstant: 25.0, topConstant: 5.0, widthConstant: 120.0, heightConstant: 18.0)
        radioConstraints.addConstraintsToRadioCollection(radioCollectionView, view: self, parent: radioWeeklyTextLabel)
        mainConstraints.addConstraintsToLeftSubtitle(popularLabel, view: self, parent: radioCollectionView, width: 77.0, height: 26.0, topConstant: 40.0)
        mainConstraints.addConstraintsToTable(popularTableView, view: self, parent: popularLabel, topConstant: 20.0, leftConstant: 24.0, heightConstant: 240.0, type: .withMargins)
    }
}

