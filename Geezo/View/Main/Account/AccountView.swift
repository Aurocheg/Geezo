//
//  AccountView.swift
//  Geezo
//
//  Created by Aurocheg on 19.09.22.
//

import UIKit

final class AccountView: UIView {
    private let colorStyle = ColorStyle()
    
    // MARK: - Init Constraints
    private let commonConstraints = CommonConstraints()
    private let mainConstraints = MainConstraints()
    private let accountConstraints = AccountConstraints()
    
    // MARK: - Init UI Elements
    private let scrollView: UIScrollView = {
        var scrollView = UIScrollView()
        return scrollView.createScrollView(height: 860.0)
    }()
    
    private let contentView: UIView = {
        var view = UIView()
        return view.createContentView(height: 860.0)
    }()
    
    private let mainTitleLabel: UILabel = {
        let label = UILabel()
        return label.createLabel(font: "Roboto-Bold", size: 48.0, color: .white, text: "Account")
    }()
    
    private let settingsButton: UIButton = {
        var button = UIButton()
        
        if let icon = UIImage(named: "settings") {
            button = button.createButton(type: .social, background: false, border: false, text: "", image: icon)
        }
        
        return button
    }()
    
    private let profileView = UIView()
    
    private let accountImageView: UIImageView = {
        let imageView = UIImageView()
        
        if let image = UIImage(named: "accountImage") {
            imageView.image = image
        }
        
        imageView.contentMode = .scaleToFill
        
        return imageView
    }()
    
    private let metricsView = UIView()
    
    public let metricsCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 27.0
        layout.itemSize = CGSize(width: 60.0, height: 41.0)
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.isScrollEnabled = false
        collectionView.backgroundColor = .clear
        
        return collectionView
    }()
    
    private let editButton: UIButton = {
        let button = UIButton()
        return button.createButton(type: .okCancel, background: true, border: true, text: "Edit", image: nil)
    }()
    
    private let libraryLabel: UILabel = {
        let label = UILabel()
        return label.createLabel(font: "Roboto-Bold", size: 22.0, color: ColorStyle().neutral1, text: "Library")
    }()
    
    public let libraryTableView: UITableView = {
        let tableView = UITableView()
        
        tableView.backgroundColor = .clear
        tableView.separatorColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.2)
        tableView.isScrollEnabled = false
        
        return tableView
    }()
    
    private let recentActivityLabel: UILabel = {
        let label = UILabel()
        return label.createLabel(font: "Roboto-Bold", size: 22.0, color: ColorStyle().neutral1, text: "Recent Activity")
    }()
    
    public let recentActivityCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = 16.0
        layout.itemSize = CGSize(width: 88.0, height: 88.0)
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = .clear
        collectionView.showsHorizontalScrollIndicator = false
        
        return collectionView
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
        
        addSubview(scrollView)
        scrollView.addSubview(contentView)
        
        contentView.addSubview(mainTitleLabel)
        contentView.addSubview(settingsButton)
        
        contentView.addSubview(profileView)
        profileView.addSubview(accountImageView)
        profileView.addSubview(metricsView)
        metricsView.addSubview(metricsCollectionView)
        metricsView.addSubview(editButton)
        
        contentView.addSubview(libraryLabel)
        contentView.addSubview(libraryTableView)
        
        contentView.addSubview(recentActivityLabel)
        contentView.addSubview(recentActivityCollectionView)
    }
    
    // MARK: - Constraints Method
    private func initConstraints() {
        mainConstraints.addConstraintsToScroll(scrollView, view: self)
        
        commonConstraints.addConstraintsToMainTitle(mainTitleLabel, view: contentView, leftConstant: 24.0, topConstant: 24.0, widthConstant: 180.0, heightConstant: 56.0)
        mainConstraints.addConstraintsToSearch(settingsButton, view: contentView, topConstant: 44.0, rightConstant: -24.0)
        
        accountConstraints.addConstraintsToProfile(profileView, view: contentView, parent: mainTitleLabel)
        accountConstraints.addConstraintsToAccountImage(accountImageView, view: profileView)
        accountConstraints.addConstraintsToMetrics(metricsView, view: profileView)
        accountConstraints.addConstraintsToMetricsCollection(metricsCollectionView, view: metricsView)
        accountConstraints.addConstraintsToEdit(editButton, view: metricsView, parent: metricsCollectionView)
        
        mainConstraints.addConstraintsToLeftSubtitle(libraryLabel, view: contentView, parent: profileView, width: 69.0, height: 26.0, topConstant: 32.0)
        mainConstraints.addConstraintsToTable(libraryTableView, view: contentView, parent: libraryLabel, topConstant: 24.0, leftConstant: 24.0, heightConstant: 269.0, type: .withMargins)
        
        mainConstraints.addConstraintsToLeftSubtitle(recentActivityLabel, view: contentView, parent: libraryTableView, width: 150.0, height: 26.0, topConstant: 40.0)
        accountConstraints.addConstraintsToRecentActivityCollection(recentActivityCollectionView, view: contentView, parent: recentActivityLabel)
        
    }
}
