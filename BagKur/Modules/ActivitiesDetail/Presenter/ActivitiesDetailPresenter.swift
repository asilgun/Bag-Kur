//
//  ActivitiesDetailPresenter.swift
//  BagKur
//
//  Created by Semih Ahmet İlgün on 12.01.2025.
//  
//

import Foundation

final class ActivitiesDetailPresenter {
  weak var view: ActivitiesDetailView?
  var router: ActivitiesDetailWireframe!
  var interactor: ActivitiesDetailInteractorInput!
  
  var activityGroup: ActivityGroup!
}

extension ActivitiesDetailPresenter: ActivitiesDetailPresentation {
  func viewDidLoad() {
    view?.setupUI(with: activityGroup)
  }
  
  func backButtonTapped() {
    router.pop()
  }
}

extension ActivitiesDetailPresenter: ActivitiesDetailInteractorOutput {
  
}
