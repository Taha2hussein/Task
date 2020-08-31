//
//  settingContract.swift
//  smartAngel_Test
//
//  Created by A on 8/31/20.
//  Copyright © 2020 Taha Hussein. All rights reserved.
//

import Foundation


// MARK: View Output (Presenter -> View)
protocol PresenterToViewsettingProtocol {
   
}


// MARK: View Input (View -> Presenter)
protocol ViewToPresentersettingProtocol {
    
    var view: PresenterToViewsettingProtocol? { get set }
    var interactor: PresenterToInteractorsettingProtocol? { get set }
    var router: PresenterToRoutersettingProtocol? { get set }
}


// MARK: Interactor Input (Presenter -> Interactor)
protocol PresenterToInteractorsettingProtocol {
    
    var presenter: InteractorToPresentersettingProtocol? { get set }
}


// MARK: Interactor Output (Interactor -> Presenter)
protocol InteractorToPresentersettingProtocol {
    
}


// MARK: Router Input (Presenter -> Router)
protocol PresenterToRoutersettingProtocol {
    
}
