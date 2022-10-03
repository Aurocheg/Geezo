//
//  ExploreView.swift
//  Geezo
//
//  Created by Aurocheg on 19.09.22.
//

import UIKit

final class ExploreView: UIView {
    private let colorStyle = ColorStyle()
    
    // MARK: - Init Constraints
    private let commonConstraints = CommonConstraints()
    private let mainConstraints = MainConstraints()
    private let exploreConstraints = ExploreConstraints()
    
    // MARK: - Init UI Elements
    private var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        let width = UIScreen.main.bounds.size.width        
        scrollView.contentSize = CGSize(width: width, height: 1500)
        scrollView.layoutIfNeeded()
        return scrollView
    }()
    
    private var contentView: UIView = {
        let view = UIView()
        let width = UIScreen.main.bounds.width
        
        view.frame.size = CGSize(width: width, height: 1500)
        view.isUserInteractionEnabled = true
        return view
    }()
    
    private let mainTitleLabel: UILabel = {
        let label = UILabel()
        return label.createLabel(font: "Roboto-Bold", size: 48.0, color: ColorStyle().neutral1, text: "Explore")
    }()
    
    private let searchButton: UIButton = {
        let button = UIButton()
        return button.createButton(type: .social, background: false, border: false, image: UIImage(named: "search"))
    }()
    
    private let geezoChartLabel: UILabel = {
        let label = UILabel()
        return label.createLabel(font: "Roboto-Bold", size: 22.0, color: ColorStyle().neutral1, text: "Geezo Chart")
    }()
    
    private let geezoViewAllButton: UIButton = {
        var button = UIButton()
        
        button = button.createButton(type: .label, background: false, border: false, text: "View all")
        button.titleLabel?.font = UIFont(name: "Roboto-Bold", size: 12.0)
        button.setTitleColor(ColorStyle().neutral1, for: .normal)
        return button
    }()
    
    public let tracksTableView: UITableView = {
        let tableView = UITableView()
        
        tableView.backgroundColor = UIColor(red: 0.114, green: 0.096, blue: 0.217, alpha: 1)
        tableView.separatorStyle = .none
        tableView.isScrollEnabled = false
        
        return tableView
    }()
    
    private let topTrendingLabel: UILabel = {
        let label = UILabel()
        return label.createLabel(font: "Roboto-Bold", size: 22.0, color: ColorStyle().neutral1, text: "Top Trending")
    }()
    
    public let trendingsCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let itemWidth = UIScreen.main.bounds.width
        
        layout.itemSize = CGSize(width: itemWidth - 48.0, height: 200)
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = 0.0
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.isPagingEnabled = true
        collectionView.backgroundColor = .clear
        
        return collectionView
    }()
    
    public let trendingsPageControls: UIPageControl = {
        let pageControl = UIPageControl()
        let trendings = ExploreTrendingsModel.getTrendings()
        
        pageControl.currentPageIndicatorTintColor = .white
        pageControl.pageIndicatorTintColor = ColorStyle().neutral2
        pageControl.currentPage = 0
        pageControl.numberOfPages = trendings.count
        
        return pageControl
    }()
    
    private let topicLabel: UILabel = {
        let label = UILabel()
        return label.createLabel(font: "Roboto-Bold", size: 22.0, color: ColorStyle().neutral1, text: "Topic")
    }()
    
    private let topicViewAllButton: UIButton = {
        var button = UIButton()
        button = button.createButton(type: .label, background: false, border: false, text: "View all")
        button.titleLabel?.font = UIFont(name: "Roboto-Bold", size: 12.0)
        button.setTitleColor(ColorStyle().neutral1, for: .normal)
        return button
    }()
    
    public let topicsCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let itemSize = CGSize(width: 100, height: 60)
        
        layout.itemSize = itemSize
        layout.minimumLineSpacing = 16.0
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = .clear
        
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
        contentView.addSubview(searchButton)
        
        contentView.addSubview(geezoChartLabel)
        contentView.addSubview(geezoViewAllButton)
        contentView.addSubview(tracksTableView)
        
        contentView.addSubview(topTrendingLabel)
        contentView.addSubview(trendingsCollectionView)
        contentView.addSubview(trendingsPageControls)
        
        contentView.addSubview(topicLabel)
        contentView.addSubview(topicViewAllButton)
        contentView.addSubview(topicsCollectionView)
    }
    
    // MARK: - Constraints Method
    private func initConstraints() {
        mainConstraints.addConstraintsToScroll(scrollView, view: self)
        
        commonConstraints.addConstraintsToMainTitle(mainTitleLabel, view: contentView, leftConstant: 24.0, topConstant: 24.0, widthConstant: 162.0, heightConstant: 56.0)
        
        mainConstraints.addConstraintsToSearch(searchButton, view: contentView, topConstant: 44.0, rightConstant: -24.0)
        
        mainConstraints.addConstraintsToLeftSubtitle(geezoChartLabel, view: contentView, parent: mainTitleLabel, width: 123.0, height: 26.0, topConstant: 32.0)
        
        mainConstraints.addConstraintsToViewAll(geezoViewAllButton, view: contentView, parent: searchButton, topConstant: 52.0)

        exploreConstraints.addConstraintsToTracksTable(tracksTableView, view: contentView, parent: geezoChartLabel)
        
        mainConstraints.addConstraintsToLeftSubtitle(topTrendingLabel, view: contentView, parent: tracksTableView, width: 130.0, height: 26.0, topConstant: 40.0)
        
        exploreConstraints.addConstraintsToCollection(trendingsCollectionView, view: contentView, parent: topTrendingLabel, heightConstant: 200.0)
        
        exploreConstraints.addConstraintsToPageControl(trendingsPageControls, view: contentView, parent: trendingsCollectionView)
        
        mainConstraints.addConstraintsToLeftSubtitle(topicLabel, view: contentView, parent: trendingsPageControls, width: 54.0, height: 26.0, topConstant: 66.0)

        mainConstraints.addConstraintsToViewAll(topicViewAllButton, view: contentView, parent: trendingsPageControls, topConstant: 74.0)
        
        exploreConstraints.addConstraintsToCollection(topicsCollectionView, view: contentView, parent: topicLabel, heightConstant: 216.0)
    }
}
