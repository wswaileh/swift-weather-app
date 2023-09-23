//
//  DailyWeatherCollectionViewCell.swift
//  brightsky
//
//  Created by Waleed Swaileh on 9/24/23.
//

import UIKit

class DailyWeatherCollectionViewCell: UICollectionViewCell {
    static let cellId = "DailyWeatherCollectionViewCell"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = .blue
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
}
