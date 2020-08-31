//
//  notesPresenter.swift
//  smartAngel_Test
//
//  Created by A on 8/31/20.
//  Copyright © 2020 Taha Hussein. All rights reserved.
//

import Foundation

class notesPresenter: ViewToPresenternotesProtocol {

    // MARK: Properties
    var view: PresenterToViewnotesProtocol?
    var interactor: PresenterToInteractornotesProtocol?
    var router: PresenterToRouternotesProtocol?
}

extension notesPresenter: InteractorToPresenternotesProtocol {
    
}
