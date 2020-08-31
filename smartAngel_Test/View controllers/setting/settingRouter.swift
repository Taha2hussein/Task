//
//  settingRouter.swift
//  smartAngel_Test
//
//  Created by A on 8/31/20.
//  Copyright © 2020 Taha Hussein. All rights reserved.
//

import Foundation
import UIKit

class settingRouter: PresenterToRoutersettingProtocol {
    
    // MARK: Static methods
    static func createModule() -> UIViewController {
        
  let viewController = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(identifier: "settingViewController")as! settingViewController
        
        let presenter: ViewToPresentersettingProtocol & InteractorToPresentersettingProtocol = settingPresenter()
        
        viewController.presenter = presenter
        viewController.presenter?.router = settingRouter()
        viewController.presenter?.view = viewController as? PresenterToViewsettingProtocol
        viewController.presenter?.interactor = settingInteractor()
        viewController.presenter?.interactor?.presenter = presenter
        
        return viewController
    }
    
}
