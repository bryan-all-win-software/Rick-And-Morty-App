//
//  AppFactory.swift
//  Rick And Morty App
//
//  Created by User-P2 on 2/1/23.
//

import Foundation
import UIKit

protocol AppFactory {
    func makeCoordinator(navigationController: UINavigationController) -> Coordinator
}

struct AppFactoryImplementation: AppFactory {
    func makeCoordinator(navigationController: UINavigationController) -> Coordinator {
        HomeCoordinator(navigationController: navigationController, homeFactory: HomeFactoryImplementation())
    }
}
