//
//  homeContract.swift
//  smartAngel_Test
//
//  Created by A on 8/31/20.
//  Copyright © 2020 Taha Hussein. All rights reserved.
//

import Foundation


// MARK: View Output (Presenter -> View)
protocol PresenterToViewhomeProtocol {
   func showLoader()
     func hideLoader()
     func reloadData()
}


// MARK: View Input (View -> Presenter)
protocol ViewToPresenterhomeProtocol {
    
    var view: PresenterToViewhomeProtocol? { get set }
    var interactor: PresenterToInteractorhomeProtocol? { get set }
    var router: PresenterToRouterhomeProtocol? { get set }
    var newData: NewModel? { get set }
    func viewDidLoad()
    func cellOfRowsInTable(_ cell : homeTableViewCell , _ index : IndexPath)
    func numberOfRowInSection(_ section : Int) -> Int
    
}


// MARK: Interactor Input (Presenter -> Interactor)
protocol PresenterToInteractorhomeProtocol {
    
    var presenter: InteractorToPresenterhomeProtocol? { get set }
      func getNewsFromServer()
}


// MARK: Interactor Output (Interactor -> Presenter)
protocol InteractorToPresenterhomeProtocol {
    func failedToGetNew(_ response:Bool)
      func sucessedToGetNew(_ new:NewModel)
}


// MARK: Router Input (Presenter -> Router)
protocol PresenterToRouterhomeProtocol {
    
}
