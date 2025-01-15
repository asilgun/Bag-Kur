//
//  OnboardingRouter.swift
//  Bağ Kur iOS Application
//
//  Created by Semih Ahmet İlgün on 29.12.2024.
//  
//

import Foundation
import UIKit

final class OnboardingRouter {
  weak var view: UIViewController?
  
  static func setupModule() -> OnboardingViewController {
    let viewController = UIStoryboard.viewController(fromStoryboard: "Onboarding") as! OnboardingViewController
    let presenter = OnboardingPresenter()
    let router = OnboardingRouter()
    let interactor = OnboardingInteractor()
    
    viewController.presenter =  presenter
    
    presenter.view = viewController
    presenter.router = router
    presenter.interactor = interactor
    
    router.view = viewController
    
    interactor.output = presenter
    
    return viewController
  }
}

extension OnboardingRouter: OnboardingWireframe {
  func routeToHome() {
    let homeViewController = HomeRouter.setupModule().navigationController!
    homeViewController.modalPresentationStyle = .fullScreen
    
    view?.present(homeViewController, animated: false)
  }
}
