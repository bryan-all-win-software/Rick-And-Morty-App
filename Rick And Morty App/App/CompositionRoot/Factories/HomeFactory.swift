//
//  HomeFactory.swift
//  Rick And Morty App
//
//  Created by User-P2 on 2/1/23.
//

import Foundation
import UIKit

protocol HomeFactory {
    func makeHome() -> UIViewController
}

struct HomeFactoryImplementation: HomeFactory {
    func makeHome() -> UIViewController {
        HomeCollectionViewController(collectionViewLayout: makeLayout())
    }
    
    func makeLayout() -> UICollectionViewLayout {
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: (UIScreen.main.bounds.width / 2) - 10, height: (UIScreen.main.bounds.width / 2) - 10)
        layout.sectionInset = UIEdgeInsets(top: .zero, left: 5, bottom: .zero, right: 5)
        return layout
    }
    
}
