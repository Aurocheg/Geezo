//
//  ExploreTracksCell.swift
//  Geezo
//
//  Created by Aurocheg on 28.09.22.
//

import UIKit

final class ExploreTracksCell: UITableViewCell {
    // MARK: - Constraints
    private let tracksCellConstraints = TracksCellConstraints()
    
    // MARK: - UI Elements
    public let trackPositionLabel: UILabel = {
        let label = UILabel()
        return label.createLabel(font: "Roboto-Regular", size: 14.0, color: .white, text: "")
    }()
    
    public let trackImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleToFill
        return imageView
    }()
    
    public let trackTitleLabel: UILabel = {
        let label = UILabel()
        return label.createLabel(font: "Roboto-Regular", size: 16.0, color: ColorStyle().neutral1, text: "")
    }()
    
    public let trackSignerLabel: UILabel = {
        let label = UILabel()
        return label.createLabel(font: "Roboto-Regular", size: 12.0, color: ColorStyle().neutral2, text: "")
    }()
    
    private let trackSettings: UIButton = {
        let button = UIButton()
        return button.createButton(type: .social, background: false, border: false, text: "", image: UIImage(named: "trackSettings"))
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
    
    // MARK: - Init Views
    private func initViews() {
        backgroundColor = .clear
        selectionStyle = .none
        
        addSubview(trackPositionLabel)
        addSubview(trackImageView)
        addSubview(trackTitleLabel)
        addSubview(trackSignerLabel)
        addSubview(trackSettings)
    }
    
    private func initConstraints() {
        tracksCellConstraints.addConstraintsToTrackPosition(trackPositionLabel, view: self, leftConstant: 12.0)
        tracksCellConstraints.addConstraintsToTrackImage(trackImageView, view: self, parent: trackPositionLabel)
        tracksCellConstraints.addConstraintsToTrackTitle(trackTitleLabel, view: self, parent: trackImageView)
        tracksCellConstraints.addConstraintsToTrackSigner(trackSignerLabel, parent: trackTitleLabel, imageView: trackImageView)
        tracksCellConstraints.addConstraintsToTrackSettings(trackSettings, view: self)
    }
    
    // MARK: - System Methods
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }    
}
