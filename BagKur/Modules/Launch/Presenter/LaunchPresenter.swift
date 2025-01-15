//
//  LaunchPresenter.swift
//  Bağ Kur iOS Application
//
//  Created by Semih Ahmet İlgün on 29.12.2024.
//  
//

import Foundation

final class LaunchPresenter {
  weak var view: LaunchView?
  var router: LaunchWireframe!
  var interactor: LaunchInteractorInput!
}

extension LaunchPresenter: LaunchPresentation {
  func viewDidLoad() {
    view?.setupUI()
  }
  
  func viewDidAppear() {
    continueToNextScreen()
  }
  
  private func continueToNextScreen() {
    UserDefaultsManager.shared.isOnboardingShowed ? router.routeToHome() : router.routeToOnboarding()
  }
}

extension LaunchPresenter: LaunchInteractorOutput {
  
}
