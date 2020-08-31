//
//  notificationsRouter.swift
//  smartAngel_Test
//
//  Created by A on 8/31/20.
//  Copyright © 2020 Taha Hussein. All rights reserved.
//

import Foundation
import UIKit

class notificationsRouter: PresenterToRouternotificationsProtocol {
    
    // MARK: Static methods
    static func createModule() -> UIViewController {
        
              
        let viewController = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(identifier: "notificationsViewController")as! notificationsViewController
        
        let presenter: ViewToPresenternotificationsProtocol & InteractorToPresenternotificationsProtocol = notificationsPresenter()
        
        viewController.presenter = presenter
        viewController.presenter?.router = notificationsRouter()
        viewController.presenter?.view = viewController as? PresenterToViewnotificationsProtocol
        viewController.presenter?.interactor = notificationsInteractor()
        viewController.presenter?.interactor?.presenter = presenter
        
        return viewController
    }
    
}
