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
        HomeViewController()
    }
}
