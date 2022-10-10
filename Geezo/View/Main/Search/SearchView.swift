//
//  SearchView.swift
//  Geezo
//
//  Created by Aurocheg on 8.10.22.
//

import UIKit

final class SearchView: UIView {
    // MARK: - Constraints
    private let searchConstraints = SearchConstraints()
    private let mainConstraints = MainConstraints()
    
    
    // MARK: - UI Elements
    private let searchTF: UISearchTextField = {
        let tf = UISearchTextField()
        tf.placeholder = "Search"
        return tf
    }()
    
    private let cancelButton: UIButton = {
        let button = UIButton()
        return button.createButton(type: .label, background: false, border: false, text: "Cancel")
    }()
    
    private let historyLabel: UILabel = {
        let label = UILabel()
        return label.createLabel(font: "Roboto-Bold", size: 22.0, color: ColorStyle().neutral1, text: "History")
    }()
    
    public let historyCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.estimatedItemSize = UICollectionViewFlowLayout.automaticSize
        layout.minimumLineSpacing = 12.0
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.isScrollEnabled = false
        collectionView.backgroundColor = .clear
        
        return collectionView
    }()
    
    private let topSearchingLabel: UILabel = {
        let label = UILabel()
        return label.createLabel(font: "Roboto-Bold", size: 22.0, color: ColorStyle().neutral1, text: "Top Searching")
    }()
    
    public var topSearchingCollectionView: UICollectionView {
        historyCollectionView
    }
    
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
        addSubview(searchTF)
        addSubview(cancelButton)
        
        addSubview(historyLabel)
        addSubview(historyCollectionView)
        
        addSubview(topSearchingLabel)
        addSubview(topSearchingCollectionView)
    }
    
    // MARK: - Init Constraints Method
    private func initConstraints() {
        searchConstraints.addConstraintsToSearchTF(searchTF, view: self)
        
        mainConstraints.addConstraintsToLeftSubtitle(historyLabel, view: self, parent: searchTF, width: 72.0, height: 28.0, topConstant: 40.0)
        searchConstraints.addConstraintsToCollection(historyCollectionView, view: self, parent: historyLabel)
        
        mainConstraints.addConstraintsToLeftSubtitle(topSearchingLabel, view: self, parent: historyCollectionView, width: 140.0, height: 26.0, topConstant: 40.0)
        searchConstraints.addConstraintsToCollection(historyCollectionView, view: self, parent: topSearchingLabel)
    }
}
