//
//  notesContract.swift
//  smartAngel_Test
//
//  Created by A on 8/31/20.
//  Copyright © 2020 Taha Hussein. All rights reserved.
//

import Foundation


// MARK: View Output (Presenter -> View)
protocol PresenterToViewnotesProtocol {
   
}


// MARK: View Input (View -> Presenter)
protocol ViewToPresenternotesProtocol {
    
    var view: PresenterToViewnotesProtocol? { get set }
    var interactor: PresenterToInteractornotesProtocol? { get set }
    var router: PresenterToRouternotesProtocol? { get set }
}


// MARK: Interactor Input (Presenter -> Interactor)
protocol PresenterToInteractornotesProtocol {
    
    var presenter: InteractorToPresenternotesProtocol? { get set }
}


// MARK: Interactor Output (Interactor -> Presenter)
protocol InteractorToPresenternotesProtocol {
    
}


// MARK: Router Input (Presenter -> Router)
protocol PresenterToRouternotesProtocol {
    
}
