//
//  homeInteractor.swift
//  smartAngel_Test
//
//  Created by A on 8/31/20.
//  Copyright © 2020 Taha Hussein. All rights reserved.
//

import Foundation

class homeInteractor: PresenterToInteractorhomeProtocol {

    // MARK: Properties
    var presenter: InteractorToPresenterhomeProtocol?
    
    func getNewsFromServer() {
        networking.shared.getNews(completion: {[weak self] (new) in
            self?.presenter?.sucessedToGetNew(new)
         
             
        }) {[weak self] (response) in
            self?.presenter?.failedToGetNew(response)
        }
    }
    

}
