//
//  HourlyWeatherCollectionViewCell.swift
//  brightsky
//
//  Created by Waleed Swaileh on 9/24/23.
//

import UIKit

class HourlyWeatherCollectionViewCell: UICollectionViewCell {
    static let cellId = "HourlyWeatherCollectionViewCell"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = .green
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
}
