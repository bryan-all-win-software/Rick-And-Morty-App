//
//  HomeMenuViewController.swift
//  Rick And Morty App
//
//  Created by User-P2 on 1/31/23.
//

import UIKit

final class HomeCollectionViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
        configCell()
    }
    
    func setUI() {
        self.title = Constants.HomeViewControllerTitle
        self.collectionView.backgroundColor = .systemBackground
    }
    
    func configCell() {
        collectionView.register(HomeCollectionViewCell.self, forCellWithReuseIdentifier: HomeCollectionViewCell.reusableIdentifier)
    }
}

extension HomeCollectionViewController {
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        Int.random(in: 10...20)
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: HomeCollectionViewCell.reusableIdentifier, for: indexPath)
                as? HomeCollectionViewCell else { return UICollectionViewCell() }
        return cell
    }
}

