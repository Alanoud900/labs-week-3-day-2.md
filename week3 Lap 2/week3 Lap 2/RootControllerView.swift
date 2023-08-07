//
//  RootControllerView.swift
//  week3 Lap 2
//
//  Created by Alanoud  on 20/01/1445 AH.
//

import Foundation
import UIKit
import SnapKit

class RootControllerView:UIViewController {
    
    
    let collectionView:UICollectionView = .init(frame: .zero, collectionViewLayout: UICollectionViewLayout()
    )
    let pupularBar: MostPopularCollectionView = .init()
    let lifestyleCollection: LifestyleCollectionView = .init()
    let healthCollection: HealthCollectionView = .init()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        
        configurePupularBar()
        configurelifestyleCollection()
        configurehealthCollection()
        
    }
    
    func configurePupularBar() {
        self.view.addSubview(pupularBar)
        
        pupularBar.snp.makeConstraints {
            $0.top.equalTo(pupularBar.snp.bottom)
            $0.width.equalTo(self.view.frame.width-32)
            $0.height.equalTo(66)
            $0.leading.equalTo(16)
        }
    }
    
    func configurelifestyleCollection() {
        self.view.addSubview(lifestyleCollection)
        
        lifestyleCollection.snp.makeConstraints {
            $0.top.equalTo(pupularBar.snp.bottom)
            $0.width.equalTo(self.view.frame.width-32)
            $0.height.equalTo(200 + 16)
            $0.leading.equalTo(16)
        }
    }
    
    func configurehealthCollection() {
        self.view.addSubview(healthCollection)
        
        healthCollection.snp.makeConstraints {
            $0.top.equalTo(pupularBar.snp.bottom)
            $0.width.equalTo(self.view.frame.width-32)
            $0.height.equalTo(200 + 16)
            $0.leading.equalTo(16)
        }
    }
}
