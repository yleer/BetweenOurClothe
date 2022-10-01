//
//  RecommendCollectionHeader.swift
//  ClothRecommend
//
//  Created by USER on 2022/10/01.
//

import UIKit


class RecommendCollectionHeader: UICollectionReusableView {
     static let identifier = "RecommendCollectionHeader"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        backgroundColor = .white
    }
}
