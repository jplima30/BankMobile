//
//  DetailsInteractor.swift
//  DesafioAppBank
//
//  Created by jplima on 09/01/21.
//  Copyright (c) 2021 jplima. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol DetailsBusinessLogic {
    func doSomething(request: Details.Something.Request)
}

protocol DetailsDataStore {
    var userAccount: UserAccount? { get set }
}

class DetailsInteractor: DetailsBusinessLogic, DetailsDataStore {
    var presenter: DetailsPresentationLogic?
    var worker: DetailsWorker?
    var userAccount: UserAccount?
    
    // MARK: Do something
    
    func doSomething(request: Details.Something.Request) {
        worker = DetailsWorker()
        worker?.fetchStatements(idUser: "1", completion: { (result) in
            print(result)
        })
        
        let response = Details.Something.Response(userAccount: userAccount)
        presenter?.presentSomething(response: response)
    }
}