//
//  UsedMarketCollectionView.swift
//  ClothRecommend
//
//  Created by USER on 2022/10/01.
//

import UIKit

class UsedMarketCollectionView: UIView {
    
    let usedMarketCollectionView: UICollectionView = {
        let collectionView = UICollectionView(
            frame: CGRect(x: 0, y: 0, width: 0, height: 0),
            collectionViewLayout: UICollectionViewFlowLayout()
        )
        
        collectionView.register(
            RecommendCollectionViewCell.self ,
            forCellWithReuseIdentifier: "recommend cell"
         )
        
        collectionView.register(
            RecommendCollectionHeader.self,
            forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader,
            withReuseIdentifier: "RecommendCollectionHeader"
        )
        return collectionView
    }()
    
    let collectionViewHeader: UICollectionReusableView = {
        let header2 = UICollectionReusableView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        
        
        return header2
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUp()
        setUpConstraints()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setUp()
        setUpConstraints()
    }
    
    
    func setUp() {
        backgroundColor = .white
        
        self.addSubview(usedMarketCollectionView)
        usedMarketCollectionView.backgroundColor = .red
    }
    
    func setUpConstraints() {
        
        usedMarketCollectionView.snp.makeConstraints { make in
            make.edges.equalTo(safeAreaLayoutGuide)
        }
        
    }
    
    
    func setUpCollectionView() {
        usedMarketCollectionView.addSubview(collectionViewHeader)
        
        
    }
    
}
