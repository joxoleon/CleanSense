//
//  HomeConfigurator.swift
//  CleanSwiftTestProject
//
//  Created by Jovan on 4/13/19.
//  Copyright (c) 2019 Jovan. All rights reserved.
//
//  This file was 'partially' generated by the Clean Swift templates created by Jovan Radivojsa (a.k.a. joxoleon),
//  Based on the original clean swift templates created by Raymond Law: http://clean-swift.com
//

import UIKit

// Connects View, Interactor, and Presenter
class HomeConfigurator: BaseConfigurator {
    // MARK: - Configuration

    func configure(_ viewController: HomeViewController) {
        // Instantiate components.
        let presenter = HomePresenter()
        let worker = HomeWorker()
        let interactor = HomeInteractor()
        let router = HomeRouter()

        // Set configurator variables and connect them.
        self.baseViewController = viewController
        self.baseWorker = worker
        self.basePresenter = presenter
        self.baseInteractor = interactor
        self.baseRouter = router
    }
}
