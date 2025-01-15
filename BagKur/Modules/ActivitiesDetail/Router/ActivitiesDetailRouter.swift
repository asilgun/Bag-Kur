//
//  ActivitiesDetailRouter.swift
//  BagKur
//
//  Created by Semih Ahmet İlgün on 12.01.2025.
//  
//

import Foundation
import UIKit

final class ActivitiesDetailRouter {
  weak var view: UIViewController?
  
  static func setupModule(activityGroup: ActivityGroup) -> ActivitiesDetailViewController {
    let viewController = UIStoryboard.viewController(fromStoryboard: "ActivitiesDetail") as! ActivitiesDetailViewController
    let presenter = ActivitiesDetailPresenter()
    let router = ActivitiesDetailRouter()
    let interactor = ActivitiesDetailInteractor()
    
    viewController.presenter =  presenter
    
    presenter.view = viewController
    presenter.router = router
    presenter.interactor = interactor
    presenter.activityGroup = activityGroup
    
    router.view = viewController
    
    interactor.output = presenter
    
    return viewController
  }
}

extension ActivitiesDetailRouter: ActivitiesDetailWireframe {
  func pop() {
    view?.navigationController?.popViewController(animated: true)
  }
}
