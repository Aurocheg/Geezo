//
//  PopularTableCell.swift
//  Geezo
//
//  Created by Aurocheg on 6.10.22.
//

import UIKit

final class PopularTableCell: UITableViewCell {
    // MARK: - Constraints
    private let popularCellConstraints = PopularCellConstraints()
    
    // MARK: - UI Elements Init
    public let popularImageView: UIImageView = {
        let imageView = UIImageView()
        
        imageView.contentMode = .scaleToFill
        imageView.layer.cornerRadius = 5.0
        
        return imageView
    }()
    
    private let popularLabelsView = UIView()
    
    public let popularTitleLabel: UILabel = {
        let label = UILabel()
        return label.createLabel(font: "Roboto-Regular", size: 16.0, color: ColorStyle().neutral1, text: "")
    }()
    
    public let popularTextLabel: UILabel = {
        var label = UILabel()
        label = label.createLabel(font: "Roboto-Regular", size: 12.0, color: ColorStyle().neutral2, text: "")
        label.numberOfLines = 0
        return label
    }()

    // MARK: - Init Method
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        initViews()
        initConstraints()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    // MARK: - Init Views Method
    private func initViews() {        
        addSubview(popularImageView)
        addSubview(popularLabelsView)
        popularLabelsView.addSubview(popularTitleLabel)
        popularLabelsView.addSubview(popularTextLabel)
    }
    
    // MARK: - Init Constraints Method
    private func initConstraints() {
        popularCellConstraints.addConstraintToImage(popularImageView, view: self)
        popularCellConstraints.addConstraintsToLabels(popularLabelsView, view: self)
        popularCellConstraints.addConstraintsToTitle(popularTitleLabel, view: popularLabelsView)
        popularCellConstraints.addConstraintsToText(popularTextLabel, view: popularLabelsView, parent: popularTitleLabel)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
