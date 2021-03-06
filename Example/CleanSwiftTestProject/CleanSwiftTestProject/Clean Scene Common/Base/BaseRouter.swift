//
//  BaseRouter.swift
//  CleanSwiftTestProject
//
//  Created by Jovan on 4/13/19.
//  Copyright (c) 2019 Jovan. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

class BaseRouter: RouterInput {

    // MARK: - Scene Components
    var baseDataStore: DataStore?
    weak var baseViewController: UIViewController?
    var basePreviousSceneReceiveDataClosure: ChildVCClosingHandler?

    // MARK: Navigation
    
    func performSegueWithIdentifier(segueId: String) {
        baseViewController?.performSegue(withIdentifier: segueId, sender: nil)
    }
    
    // MARK: Passing data

    func passDataToNextScene(segue: UIStoryboardSegue) {
        if let vc = segue.destination as? BaseViewController {
            vc.baseRouter?.basePreviousSceneReceiveDataClosure = baseDataStore?.onBaseChildViewControllerClosing
        }
    }

    func passDataToPreviousScene() {
        guard let dataStore = baseDataStore else {
            assertionFailure("Not Properly connected")
            return
        }
        // When closing pass data store to current scene
        basePreviousSceneReceiveDataClosure?(dataStore)
    }
}
