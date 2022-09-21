//
//  HomeView.swift
//  Geezo
//
//  Created by Aurocheg on 19.09.22.
//

import UIKit

final class HomeView: UIView {
    let colorStyle = ColorStyle()
    
    // MARK: - Init Constraints
    private let commonConstraints = CommonConstraints()
    private let homeConstraints = HomeConstraints()
    
    // MARK: - Init UI Elements
    private let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        return scrollView
    }()
    
    private let mainTitleLabel: UILabel = {
        Label().createLabel(font: "Roboto-Bold", size: 48.0, color: ColorStyle().neutral1, text: "Geezo")
    }()
    
    private let searchButton: UIButton = {
        Button().createButton(type: .social, background: false, border: false, image: UIImage(named: "search"))
    }()
    
    private let newAlbumsLabel: UILabel = {
        Label().createLabel(font: "Roboto-Bold", size: 22.0, color: ColorStyle().neutral1, text: "New Albums")
    }()
    
    private let viewAllButton: UIButton = {
        let button = Button().createButton(type: .label, background: false, border: false, text: "View all")
        button.titleLabel?.font = UIFont(name: "Roboto-Bold", size: 12.0)
        button.setTitleColor(ColorStyle().neutral1, for: .normal)
        
        return button
    }()
    
//    private let albumsCollectionView: UICollectionView = {
//        let collectionViewCells = [UICollectionViewCell(), UICollectionViewCell()]
//
//
//        UIScrollView
//    }()
    
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
        addSubview(searchButton)
        addSubview(newAlbumsLabel)
        addSubview(viewAllButton)
    }
    
    // MARK: - Constraints Method
    private func initConstraints() {
        commonConstraints.addConstraintsToMainTitle(mainTitleLabel, view: self, leftConstant: 24.0, topConstant: 64.0, widthConstant: 140.0, heightConstant: 56.0)
        homeConstraints.addConstraintsToSearch(searchButton, view: self)
        homeConstraints.addConstraintsToNewAlbums(newAlbumsLabel, view: self, parent: mainTitleLabel)
        homeConstraints.addConstraintsToViewAll(viewAllButton, view: self, parent: searchButton)
    }
}
