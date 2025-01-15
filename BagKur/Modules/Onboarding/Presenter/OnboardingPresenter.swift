//
//  OnboardingPresenter.swift
//  Bağ Kur iOS Application
//
//  Created by Semih Ahmet İlgün on 29.12.2024.
//  
//

import Foundation

final class OnboardingPresenter {
  weak var view: OnboardingView?
  var router: OnboardingWireframe!
  var interactor: OnboardingInteractorInput!
  
  var items: [OnboardingItem] = [
    OnboardingItem(image: Styles.Image.bored, title: "Canın mı sıkıldı?", subtitle: "BağKur ile eğlenmeye hazır mısın?"),
    OnboardingItem(image: Styles.Image.family, title: "Hemen başlayalım.", subtitle: "Devam et ve arkadaşlarınla ve ailenle eğlenmeye hemen başla.")
  ]
  
  var currentIndex = 0
}

extension OnboardingPresenter: OnboardingPresentation {
  func viewDidLoad() {
    view?.setupUI(with: items)
  }
  
  func continueButtonTapped() {
    if currentIndex == 0 {
      currentIndex = 1
      
      view?.updateUI()
    } else {
      UserDefaultsManager.shared.isOnboardingShowed = true
      
      router.routeToHome()
    }
  }
}

extension OnboardingPresenter: OnboardingInteractorOutput {
  
}
