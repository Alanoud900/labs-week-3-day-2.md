//
//  LifestyleCollectionView.swift
//  week3 Lap 2
//
//  Created by Alanoud  on 20/01/1445 AH.
//

import Foundation
import UIKit
import SnapKit

class HealthCollectionView:UIView, UICollectionViewDataSource, UICollectionViewDelegate {
   
    
    let categories: Array<String> = [
        "Health","Exercise"
    ]
    
   
    
    
    var collectionView: UICollectionView = .init(
        frame: .zero,
        collectionViewLayout: UICollectionViewLayout()
    )
    init() {
        super.init(frame: .zero)
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 300, height: 400)
        layout.minimumLineSpacing = 4
        layout.minimumInteritemSpacing = 4
        layout.scrollDirection = .horizontal
        collectionView = .init(frame: .zero, collectionViewLayout: layout)
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(UICollectionView.self, forCellWithReuseIdentifier: "cell")
        collectionView.showsHorizontalScrollIndicator = false
        self.addSubview(collectionView)
        collectionView.snp.makeConstraints {
            $0.leading.top.trailing.bottom.equalTo(0)
            
        }
    }
    override init (frame: CGRect) {
        super.init(frame: frame)
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}


    
        
    
    
extension HealthCollectionView {//, UICollectionViewDataSource {
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath as IndexPath)
        let label = UILabel()
        label.text = categories[indexPath.item]
        label.textAlignment = .center
        label.backgroundColor = .gray.withAlphaComponent(0.2)
        
        cell.addSubview(label)
        label.snp.makeConstraints {
            $0.leading.top.trailing.bottom.equalTo(cell)
        }
        cell.backgroundColor = .gray.withAlphaComponent(0.2)
        cell.layer.cornerRadius = 25
        return cell
        
        
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }

}
