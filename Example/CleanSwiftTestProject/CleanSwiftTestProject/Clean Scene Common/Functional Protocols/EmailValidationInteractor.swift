//
//  EmailValidationInteractor.swift
//  CleanSwiftTestProject
//
//  Created by Jovan on 4/14/19.
//  Copyright (c) 2019 Jovan. All rights reserved.
//
//  This file was 'partially' generated by the 'Component Based Clean Swift Templates' created by Jovan Radivojsa (a.k.a. joxoleon),
//  Based on the clean swift templates created by Raymond Law: http://clean-swift.com
//

import UIKit

protocol EmailValidationBusinessLogic: BusinessLogic {
    func validateEmail(email: String)
}

protocol EmailValidationDataStore: DataStore {
    var email: String? { get set }
}

protocol EmailValidationInteractor: Interactor, EmailValidationBusinessLogic, EmailValidationDataStore {
}

extension EmailValidationInteractor {

    func validateEmail(email: String) {
        self.email = email
        let isValid = true
        if let validatePresenter = basePresenter as? EmailValidationPresentationLogic {
            validatePresenter.presentValidateEmail(isValid: isValid)
        }
    }

}
