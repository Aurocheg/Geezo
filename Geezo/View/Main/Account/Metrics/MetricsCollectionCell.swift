//
//  MetricsCollectionCell.swift
//  Geezo
//
//  Created by Aurocheg on 7.10.22.
//

import UIKit

final class MetricsCollectionCell: UICollectionViewCell {
    // MARK: - Constraints
    private let metricsCellConstraints = MetricsCellConstraints()
    
    // MARK: - Init UI Elements
    public let numberLabel: UILabel = {
        var label = UILabel()
        label = label.createLabel(font: "Roboto-Bold", size: 16.0, color: ColorStyle().neutral1, text: "")
        label.textAlignment = .center
        return label
    }()
    
    public let textLabel: UILabel = {
        var label = UILabel()
        label = label.createLabel(font: "Roboto-Regular", size: 14.0, color: ColorStyle().neutral1, text: "")
        label.textAlignment = .center
        return label
    }()
    
    // MARK: - Init Method
    override init(frame: CGRect) {
        super.init(frame: frame)
                                
        initViews()
        initConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Init Views Method
    private func initViews() {
        addSubview(numberLabel)
        addSubview(textLabel)
    }
    
    // MARK: - Init Constraints Method
    private func initConstraints() {
        metricsCellConstraints.addConstraintsToNumber(numberLabel, view: self)
        metricsCellConstraints.addConstraintsToText(textLabel, view: self, parent: numberLabel)
    }
}
