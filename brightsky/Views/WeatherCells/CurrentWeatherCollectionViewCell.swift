//
//  CurrentWeatherCollectionViewCell.swift
//  brightsky
//
//  Created by Waleed Swaileh on 9/24/23.
//

import UIKit

class CurrentWeatherCollectionViewCell: UICollectionViewCell {
    
    static let cellId = "CurrentWeatherCollectionViewCell"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = .red
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
}
