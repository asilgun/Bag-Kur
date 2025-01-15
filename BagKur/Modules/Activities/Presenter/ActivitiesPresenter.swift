//
//  ActivitiesPresenter.swift
//  Bağ Kur iOS Application
//
//  Created by Semih Ahmet İlgün on 29.12.2024.
//
//

import Foundation

final class ActivitiesPresenter {
  weak var view: ActivitiesView?
  var router: ActivitiesWireframe!
  var interactor: ActivitiesInteractorInput!
  
  var homeItem: HomeItem!
}

extension ActivitiesPresenter: ActivitiesPresentation {
  func viewDidLoad() {
    view?.setupUI(with: homeItem.activityGroups)
  }
  
  func backButtonTapped() {
    router.pop()
  }
  
  func seeAllButtonTapped(with activityGroup: ActivityGroup) {
    router.routeToActivitiesDetail(with: activityGroup)
  }
}

extension ActivitiesPresenter: ActivitiesInteractorOutput {
  
}
