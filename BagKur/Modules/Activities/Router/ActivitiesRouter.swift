//
//  ActivitiesRouter.swift
//  Bağ Kur iOS Application
//
//  Created by Semih Ahmet İlgün on 29.12.2024.
//  
//

import Foundation
import UIKit

final class ActivitiesRouter {
  weak var view: UIViewController?
  
  static func setupModule(homeItem: HomeItem) -> ActivitiesViewController {
    let viewController = UIStoryboard.viewController(fromStoryboard: "Activities") as! ActivitiesViewController
    let presenter = ActivitiesPresenter()
    let router = ActivitiesRouter()
    let interactor = ActivitiesInteractor()
    
    viewController.presenter =  presenter
    
    presenter.view = viewController
    presenter.router = router
    presenter.interactor = interactor
    presenter.homeItem = homeItem
    
    router.view = viewController
    
    interactor.output = presenter
    
    return viewController
  }
}

extension ActivitiesRouter: ActivitiesWireframe {
  func routeToActivitiesDetail(with activityGroup: ActivityGroup) {
    let activitiesDetailViewController = ActivitiesDetailRouter.setupModule(activityGroup: activityGroup)
    
    view?.navigationController?.pushViewController(activitiesDetailViewController, animated: true)
  }
  
  func pop() {
    view?.navigationController?.popViewController(animated: true)
  }
}
