//
//  LoginRouter.swift
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

@objc protocol LoginRoutingLogic {
    func routeToDetails()
}

protocol LoginDataPassing {
    var dataStore: LoginDataStore? { get }
}

class LoginRouter: NSObject, LoginRoutingLogic, LoginDataPassing {
    weak var viewController: LoginViewController?
    var dataStore: LoginDataStore?
    
    // MARK: Routing
    
    func routeToDetails() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let destinationVC = storyboard.instantiateViewController(withIdentifier: "DetailsViewController") as! DetailsViewController
        var destinationDS = destinationVC.router!.dataStore!
        passDataToDetails(source: dataStore!, destination: &destinationDS)
        navigateToDetails(source: viewController!, destination: destinationVC)
    }
    
    // MARK: Passing data
    
    func passDataToDetails(source: LoginDataStore, destination: inout DetailsDataStore) {
        destination.userAccount = source.userAccount
    }
    
    // MARK: Navigation
    
    func navigateToDetails(source: LoginViewController, destination: DetailsViewController) {
        source.navigationController?.pushViewController(destination, animated: true)
    }
}