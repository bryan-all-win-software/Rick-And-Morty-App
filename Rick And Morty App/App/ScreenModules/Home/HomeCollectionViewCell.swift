//
//  HomeCollectionViewCell.swift
//  Rick And Morty App
//
//  Created by User-P2 on 2/1/23.
//

import Foundation
import UIKit

final class HomeCollectionViewCell: UICollectionViewCell {
    
    private let image: UIImageView = {
        let image = UIImageView()
        image.image = #imageLiteral(resourceName: "default-image")
        image.contentMode = .scaleToFill
        image.layer.cornerRadius = 100
        return image
    }()
    
    private let label: UILabel = {
        let label = UILabel()
        label.textColor = UIColor.label
        label.font = UIFont.preferredFont(forTextStyle: .headline)
        label.text = "HAHAHAHA"
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        config()
    }

    required init(coder: NSCoder?) {
        fatalError("Init coder has not been implemented")
    }
    
    private func config() {
        addSubview(image)
        image.fillSuperView()
        configGradient()
        addSubview(label)
        label.setConstraints(bottom: bottomAnchor,
                             right: rightAnchor,
                             left: leftAnchor,
                             pRight: 10,
                             pLeft: 10)
    }
    
    private func configGradient() {
        let gradient = CAGradientLayer()
        gradient.frame = self.bounds
        gradient.colors = [UIColor.clear.cgColor, UIColor.gray.cgColor]
        gradient.locations = [0.7, 0.9]
        self.layer.addSublayer(gradient)
    }
    
}

extension HomeCollectionViewCell: Reusable { }
