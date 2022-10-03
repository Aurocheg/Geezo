//
//  HomeView.swift
//  Geezo
//
//  Created by Aurocheg on 19.09.22.
//

import UIKit

final class HomeView: UIView {
    private let colorStyle = ColorStyle()
    
    // MARK: - Init Constraints
    private let commonConstraints = CommonConstraints()
    private let mainConstraints = MainConstraints()
    private let homeConstraints = HomeConstraints()
    
    // MARK: - Init UI Elements
    private let mainTitleLabel: UILabel = {
        let label = UILabel()
        return label.createLabel(font: "Roboto-Bold", size: 48.0, color: ColorStyle().neutral1, text: "Geezo")
    }()
    
    private let searchButton: UIButton = {
        let button = UIButton()
        return button.createButton(type: .social, background: false, border: false, image: UIImage(named: "search"))
    }()
    
    private let newAlbumsLabel: UILabel = {
        let label = UILabel()
        return label.createLabel(font: "Roboto-Bold", size: 22.0, color: ColorStyle().neutral1, text: "New Albums")
    }()
    
    private let viewAllButton: UIButton = {
        var button = UIButton()
        
        button = button.createButton(type: .label, background: false, border: false, text: "View all")
        button.titleLabel?.font = UIFont(name: "Roboto-Bold", size: 12.0)
        button.setTitleColor(ColorStyle().neutral1, for: .normal)
        return button
    }()
    
    lazy var albumCarousel = AlbumCarousel(frame: .zero, albumImages: albumImages)
    
    // MARK: - Variables
    let albumImages = [
        UIImage(named: "albumCollectionCell1")!,
        UIImage(named: "albumCollectionCell2")!,
        UIImage(named: "albumCollectionCell3")!
    ]
    
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
        
        // MARK: - Adding Subviews
        addSubview(mainTitleLabel)
        addSubview(searchButton)
        addSubview(newAlbumsLabel)
        addSubview(viewAllButton)
        addSubview(albumCarousel)
    }
    
    // MARK: - Constraints Method
    private func initConstraints() {
        commonConstraints.addConstraintsToMainTitle(mainTitleLabel, view: self, leftConstant: 24.0, topConstant: 64.0, widthConstant: 140.0, heightConstant: 56.0)
        mainConstraints.addConstraintsToSearch(searchButton, view: self, topConstant: 84.0, rightConstant: -24.0)
        mainConstraints.addConstraintsToLeftSubtitle(newAlbumsLabel, view: self, parent: mainTitleLabel, width: 125.0, height: 66.0, topConstant: 32.0)
        mainConstraints.addConstraintsToViewAll(viewAllButton, view: self, parent: searchButton, topConstant: 56.0)
        homeConstraints.addConstraintsToAlbums(albumCarousel, view: self, parent: newAlbumsLabel)
    }
}
