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
    private let scrollView: UIScrollView = {
        var scrollView = UIScrollView()
        return scrollView.createScrollView(height: 1070)
    }()
    
    private let contentView: UIView = {
        var view = UIView()
        return view.createContentView(height: 1070)
    }()
    
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
    
    public let albumsCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 188.0, height: 188.0)
        layout.minimumLineSpacing = 20.0
        layout.scrollDirection = .horizontal
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = .clear
        
        return collectionView
    }()
    
    private let weeklyLabel: UILabel = {
        let label = UILabel()
        return label.createLabel(font: "Roboto-Bold", size: 22.0, color: ColorStyle().neutral1, text: "Geezo Weekly")
    }()
    
    private let weeklyVideoView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemYellow
        return view
    }()
    
    private let recentlyTracksLabel: UILabel = {
        let label = UILabel()
        return label.createLabel(font: "Roboto-Bold", size: 22.0, color: ColorStyle().neutral1, text: "Recently Music")
    }()
    
    public let recentlyTracksTableView: UITableView = {
        let tableView = UITableView()
        tableView.backgroundColor = .clear
        tableView.isScrollEnabled = false
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
        
        // MARK: - Adding Subviews
        addSubview(scrollView)
        scrollView.addSubview(contentView)
        
        contentView.addSubview(mainTitleLabel)
        contentView.addSubview(searchButton)
        
        contentView.addSubview(newAlbumsLabel)
        contentView.addSubview(viewAllButton)
        contentView.addSubview(albumsCollectionView)
        
        contentView.addSubview(weeklyLabel)
        contentView.addSubview(weeklyVideoView)
        
        contentView.addSubview(recentlyTracksLabel)
        contentView.addSubview(recentlyTracksTableView)
    }
    
    // MARK: - Constraints Method
    private func initConstraints() {
        mainConstraints.addConstraintsToScroll(scrollView, view: self)
        
        commonConstraints.addConstraintsToMainTitle(mainTitleLabel, view: contentView, leftConstant: 24.0, topConstant: 24.0, widthConstant: 140.0, heightConstant: 56.0)
        mainConstraints.addConstraintsToSearch(searchButton, view: contentView, topConstant: 44.0, rightConstant: -24.0)
        
        mainConstraints.addConstraintsToLeftSubtitle(newAlbumsLabel, view: contentView, parent: mainTitleLabel, width: 125.0, height: 26.0, topConstant: 32.0)
        mainConstraints.addConstraintsToViewAll(viewAllButton, view: contentView, parent: searchButton, topConstant: 52.0)
        homeConstraints.addConstraintsToAlbums(albumsCollectionView, view: contentView, parent: newAlbumsLabel)
        
        mainConstraints.addConstraintsToLeftSubtitle(weeklyLabel, view: contentView, parent: albumsCollectionView, width: 140.0, height: 26.0, topConstant: 60.0)
        homeConstraints.addConstraintsToWeeklyVideo(weeklyVideoView, view: contentView, parent: weeklyLabel)
        
        mainConstraints.addConstraintsToLeftSubtitle(recentlyTracksLabel, view: contentView, parent: weeklyVideoView, width: 152.0, height: 26.0, topConstant: 40.0)
        homeConstraints.addConstraintsToRecentlyTracks(recentlyTracksTableView, view: contentView, parent: recentlyTracksLabel)
    }
}
