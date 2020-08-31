//
//  notificationsPresenter.swift
//  smartAngel_Test
//
//  Created by A on 8/31/20.
//  Copyright © 2020 Taha Hussein. All rights reserved.
//

import Foundation

class notificationsPresenter: ViewToPresenternotificationsProtocol {

    // MARK: Properties
    var view: PresenterToViewnotificationsProtocol?
    var interactor: PresenterToInteractornotificationsProtocol?
    var router: PresenterToRouternotificationsProtocol?
}

extension notificationsPresenter: InteractorToPresenternotificationsProtocol {
    
}
