//
//  LibraryTableCell.swift
//  Geezo
//
//  Created by Aurocheg on 7.10.22.
//

import UIKit

final class LibraryTableCell: UITableViewCell {
    // MARK: - Constraints
    private let libraryCellConstraints = LibraryCellConstraints()
    
    // MARK: - Init UI Elements
    public let libraryImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleToFill
        return imageView
    }()
    
    public let libraryTitleLabel: UILabel = {
        let label = UILabel()
        return label.createLabel(font: "Roboto-Regular", size: 14.0, color: ColorStyle().neutral1, text: "")
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
        backgroundColor = .clear
        selectionStyle = .none
        accessoryType = .disclosureIndicator
        
        addSubview(libraryImageView)
        addSubview(libraryTitleLabel)
    }
    
    // MARK: - Init Constraints Method
    private func initConstraints() {
        libraryCellConstraints.addConstraintsToImage(libraryImageView, view: self)
        libraryCellConstraints.addConstraintsToTitle(libraryTitleLabel, view: self, parent: libraryImageView)
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
