//
//  OnboardingContract.swift
//  Bağ Kur iOS Application
//
//  Created by Semih Ahmet İlgün on 29.12.2024.
//  
//

import Foundation

protocol OnboardingView: BaseView {
  func setupUI(with items: [OnboardingItem])
  
  func updateUI()
}

protocol OnboardingPresentation: AnyObject {
  func viewDidLoad()
  
  func continueButtonTapped()
}

protocol OnboardingInteractorInput: AnyObject {
  
}

protocol OnboardingInteractorOutput: AnyObject {
  
}

protocol OnboardingWireframe: AnyObject {
  func routeToHome()
}
