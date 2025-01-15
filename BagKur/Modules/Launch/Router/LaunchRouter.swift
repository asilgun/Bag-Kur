//
//  LaunchRouter.swift
//  Bağ Kur iOS Application
//
//  Created by BSemih Ahmet İlgün on 29.12.2024.
//
//

import Foundation
import UIKit

final class LaunchRouter {
  weak var view: UIViewController?
  
  static func setupModule() -> LaunchViewController {
    let viewController = UIStoryboard.viewController(fromStoryboard: "Launch") as! LaunchViewController
    let presenter = LaunchPresenter()
    let router = LaunchRouter()
    let interactor = LaunchInteractor()
    
    viewController.presenter =  presenter
    
    presenter.view = viewController
    presenter.router = router
    presenter.interactor = interactor
    
    router.view = viewController
    
    interactor.output = presenter
    
    return viewController
  }
}

extension LaunchRouter: LaunchWireframe {
  func routeToOnboarding() {
    let onboardingViewController = OnboardingRouter.setupModule()
    onboardingViewController.modalPresentationStyle = .fullScreen
    
    view?.present(onboardingViewController, animated: false)
  }
  
  func routeToHome() {
    let homeViewController = HomeRouter.setupModule().navigationController!
    homeViewController.modalPresentationStyle = .fullScreen
    
    view?.present(homeViewController, animated: false)
  }
}
