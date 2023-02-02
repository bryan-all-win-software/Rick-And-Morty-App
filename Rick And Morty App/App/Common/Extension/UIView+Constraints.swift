//
//  UIView+Constraints.swift
//  Rick And Morty App
//
//  Created by User-P2 on 2/1/23.
//

import Foundation
import UIKit

extension UIView {
    
    func setConstraints(
        top: NSLayoutYAxisAnchor? = nil,
        bottom: NSLayoutYAxisAnchor? = nil,
        right: NSLayoutXAxisAnchor? = nil,
        left: NSLayoutXAxisAnchor? = nil,
        pTop: CGFloat = .zero,
        pBottom: CGFloat = .zero,
        pRight: CGFloat = .zero,
        pLeft: CGFloat = .zero
    ) {

        self.translatesAutoresizingMaskIntoConstraints = false

        if let top = top {
            self.topAnchor.constraint(equalTo: top, constant: pTop).isActive = true
        }
        
        if let bottom = bottom {
            self.bottomAnchor.constraint(equalTo: bottom, constant: -pBottom).isActive = true
        }
        
        if let right = right {
            self.rightAnchor.constraint(equalTo: right, constant: -pRight).isActive = true
        }
        
        if let left = left {
            self.leftAnchor.constraint(equalTo: left, constant: pLeft).isActive = true
        }
        
    }
    
    func fillSuperView(padding: CGFloat = .zero) {
        guard let superView = superview else { return }
        setConstraints(top: superView.topAnchor, bottom: superView.bottomAnchor, right: superView.rightAnchor, left: superView.leftAnchor,
                                 pTop: padding, pBottom: padding, pRight: padding, pLeft: padding)
    }
    
}
