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
    
    private let viewAllButton: UIButton = {
        var button = UIButton()
        
        button = button.createButton(type: .label, background: false, border: false, text: "View all")
        button.titleLabel?.font = UIFont(name: "Roboto-Bold", size: 12.0)
        button.setTitleColor(ColorStyle().neutral1, for: .normal)
        return button
    }()
    
    public let tableView: UITableView = {
        let tableView = UITableView()
        
        tableView.backgroundColor = UIColor(red: 0.114, green: 0.096, blue: 0.217, alpha: 1)
        tableView.separatorStyle = .none
        tableView.isScrollEnabled = false
        
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
        addSubview(searchButton)
        addSubview(geezoChartLabel)
        addSubview(viewAllButton)
        addSubview(tableView)
    }
    
    // MARK: - Constraints Method
    private func initConstraints() {
        // MARK: - Common Constraints
        commonConstraints.addConstraintsToMainTitle(mainTitleLabel, view: self, leftConstant: 24.0, topConstant: 64.0, widthConstant: 162.0, heightConstant: 56.0)
        
        // MARK: - Main Constraints
        mainConstraints.addConstraintsToSearch(searchButton, view: self)
        mainConstraints.addConstraintsToLeftSubtitle(geezoChartLabel, view: self, parent: mainTitleLabel, width: 123.0, height: 26.0)
        mainConstraints.addConstraintsToViewAll(viewAllButton, view: self, parent: searchButton)
        
        // MARK: - Explore Constraints
        exploreConstraints.addConstraintsToTable(tableView, view: self, parent: geezoChartLabel)
    }
}
