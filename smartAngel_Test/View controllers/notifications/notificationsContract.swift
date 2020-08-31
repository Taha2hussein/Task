//
//  notificationsContract.swift
//  smartAngel_Test
//
//  Created by A on 8/31/20.
//  Copyright © 2020 Taha Hussein. All rights reserved.
//

import Foundation


// MARK: View Output (Presenter -> View)
protocol PresenterToViewnotificationsProtocol {
   
}


// MARK: View Input (View -> Presenter)
protocol ViewToPresenternotificationsProtocol {
    
    var view: PresenterToViewnotificationsProtocol? { get set }
    var interactor: PresenterToInteractornotificationsProtocol? { get set }
    var router: PresenterToRouternotificationsProtocol? { get set }
}


// MARK: Interactor Input (Presenter -> Interactor)
protocol PresenterToInteractornotificationsProtocol {
    
    var presenter: InteractorToPresenternotificationsProtocol? { get set }
}


// MARK: Interactor Output (Interactor -> Presenter)
protocol InteractorToPresenternotificationsProtocol {
    
}


// MARK: Router Input (Presenter -> Router)
protocol PresenterToRouternotificationsProtocol {
    
}
