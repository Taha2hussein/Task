//
//  homePresenter.swift
//  smartAngel_Test
//
//  Created by A on 8/31/20.
//  Copyright © 2020 Taha Hussein. All rights reserved.
//

import Foundation

class homePresenter: ViewToPresenterhomeProtocol {
    
     func cellOfRowsInTable(_ cell: homeTableViewCell, _ index: IndexPath) {
          guard let new = newData else{return}
          cell.reuseNewCell(cell, new, index)
      }
      
      func numberOfRowInSection(_ section: Int) -> Int {
          let number_Rows = newData?.articles.count
          return number_Rows ?? 0
      }
      
      func viewDidLoad() {
          view?.showLoader()
          interactor?.getNewsFromServer()
      }
    

    // MARK: Properties
    var view: PresenterToViewhomeProtocol?
    var interactor: PresenterToInteractorhomeProtocol?
    var router: PresenterToRouterhomeProtocol?
    var newData : NewModel?

}

extension homePresenter: InteractorToPresenterhomeProtocol {
    func failedToGetNew(_ response: Bool) {
           view?.hideLoader()
       }
       
       func sucessedToGetNew(_ new: NewModel) {
           newData = new
           GlobalData.sharedInstance.newData = new
           view?.hideLoader()
           view?.reloadData()
       }
}
