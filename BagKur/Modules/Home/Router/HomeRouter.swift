//
//  HomeRouter.swift
//  Bağ Kur iOS Application
//
//  Created by Semih Ahmet İlgün on 29.12.2024.
//  
//

import Foundation
import UIKit

final class HomeRouter {
  weak var view: UIViewController?
  
  static func setupModule() -> HomeViewController {
    let navigationController = UIStoryboard.viewController(fromStoryboard: "Home") as! UINavigationController
    let viewController = navigationController.visibleViewController as! HomeViewController
    
    let presenter = HomePresenter()
    let router = HomeRouter()
    let interactor = HomeInteractor()
    
    viewController.presenter =  presenter
    
    presenter.view = viewController
    presenter.router = router
    presenter.interactor = interactor
    
    router.view = viewController
    
    interactor.output = presenter
    
    return viewController
  }
}

extension HomeRouter: HomeWireframe {
  func routeToActivities(homeItem: HomeItem) {
    let activitiesViewController = ActivitiesRouter.setupModule(homeItem: homeItem)
    
    view?.navigationController?.pushViewController(activitiesViewController, animated: true)
  }
}
