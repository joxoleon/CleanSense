//
//  ChildConfigurator.swift
//  CleanSwiftTestProject
//
//  Created by Jovan on 4/13/19.
//  Copyright (c) 2019 Jovan. All rights reserved.
//
//  This file was 'partially' generated by the 'Component Based Clean Swift Templates' created by Jovan Radivojsa (a.k.a. joxoleon),
//  Based on the clean swift templates created by Raymond Law: http://clean-swift.com
//

import UIKit

// Connects View, Interactor, and Presenter
class ChildConfigurator: BaseConfigurator {

    func configure(_ viewController: ChildViewController) {
        // Instantiate scene components.
        let presenter = ChildPresenter()
        let worker = ChildWorker()
        let interactor = ChildInteractor()
        let router = ChildRouter()

        // Set configurator variables and connect them.
        self.baseViewController = viewController
        self.baseWorker = worker
        self.basePresenter = presenter
        self.baseInteractor = interactor
        self.baseRouter = router
    }
}