//
//  notesRouter.swift
//  smartAngel_Test
//
//  Created by A on 8/31/20.
//  Copyright © 2020 Taha Hussein. All rights reserved.
//

import Foundation
import UIKit

class notesRouter: PresenterToRouternotesProtocol {
    
    // MARK: Static methods
    static func createModule() -> UIViewController {
        
         let viewController = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(identifier: "notesViewController")as! notesViewController
        
        let presenter: ViewToPresenternotesProtocol & InteractorToPresenternotesProtocol = notesPresenter()
        
        viewController.presenter = presenter
        viewController.presenter?.router = notesRouter()
        viewController.presenter?.view = viewController as? PresenterToViewnotesProtocol
        viewController.presenter?.interactor = notesInteractor()
        viewController.presenter?.interactor?.presenter = presenter
        
        return viewController
    }
    
}
