//
//  settingPresenter.swift
//  smartAngel_Test
//
//  Created by A on 8/31/20.
//  Copyright © 2020 Taha Hussein. All rights reserved.
//

import Foundation

class settingPresenter: ViewToPresentersettingProtocol {

    // MARK: Properties
    var view: PresenterToViewsettingProtocol?
    var interactor: PresenterToInteractorsettingProtocol?
    var router: PresenterToRoutersettingProtocol?
}

extension settingPresenter: InteractorToPresentersettingProtocol {
    
}
